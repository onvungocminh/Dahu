#include <mln/core/image/image2d.hpp>
#include <mln/core/neighb2d.hpp>

#include <mln/morpho/tos/ctos.hpp>
#include <mln/morpho/component_tree/compute_depth.hpp>
#include <mln/morpho/component_tree/reconstruction.hpp>
#include <mln/morpho/component_tree/accumulate.hpp>
#include <mln/morpho/component_tree/graphviz.hpp>

#include <tbb/parallel_for.h>
#include <tbb/task_scheduler_init.h>

#include <mln/io/imread.hpp>
#include <mln/io/imsave.hpp>

#include <mln/core/dontcare.hpp>
#include <boost/graph/dag_shortest_paths.hpp>
#include <boost/graph/transpose_graph.hpp>
#include <boost/property_map/function_property_map.hpp>

#include <apps/tos/addborder.hpp>
#include <apps/tos/Kinterpolate.hpp>
#include <apps/tos/croutines.hpp>
#include <apps/g2/compute_g2.hpp>
#include <apps/g2/satmaxtree.hpp>
#include "mumford_shah_on_tree.hpp"



#include <sstream>
#include <stdlib.h>


#include <iostream>
#include <stdio.h>
#include "dirent.h"
#include <ctime>


// Compute the depth attribute of each graph node
boost::vector_property_map<unsigned>
compute_graph_depth(const MyGraph& g)
{
  mln_entering("Compute graph depth");

  boost::vector_property_map<unsigned> depth(boost::num_vertices(g));

  auto one = [](mln::dontcare_t) -> int{ return 1; };
  auto w = boost::make_function_property_map<MyGraph::edge_descriptor, int, decltype(one)>(one);

  MyGraph::vertex_descriptor root = boost::vertex(0, g);
  depth[root] = 0;

  MyGraph gT;
  boost::transpose_graph(g, gT);
  boost::dag_shortest_paths(gT, root, boost::weight_map(w)
                            .distance_map(depth)
                            .distance_compare(std::greater<int> ())
                            .distance_inf(-1)
                            .distance_zero(0)
                            );
  mln_exiting();
  return depth;
}

// Compute the per-pixel attribute and reconstruct
template <class ValueMap>
void
write_vmap_to_image(const tree_t* t, const tlink_t* tlink,
                    const ValueMap& vmap, mln::image2d<mln::uint16>& out)
{
  mln_foreach(auto px, out.pixels())
  {
    unsigned w = 0;
    for (int i = 0; i < NTREE; ++i)
      {
        tree_t::node_type tnode = t[i].get_node_at(px.index());
        MyGraph::vertex_descriptor gnode = tlink[i][tnode];
        w = std::max(w, vmap[gnode]);
      }
    px.val() = w;
  }
}

/// \brief Remove non-2F from the tree
template <class P>
mln::morpho::component_tree<P, mln::image2d<P> >
tree_keep_2F(const mln::morpho::component_tree<P, mln::image2d<P> >& tree)
{
  using namespace mln;
  morpho::component_tree<P, image2d<P> > out;

  auto newdata = out._get_data();
  auto olddata = tree._get_data();

  // 1. Copy the point2node map
  box2d olddom = olddata->m_pmap.domain();
  box2d dom;
  dom.pmin = olddom.pmin / 2;
  dom.pmax = (olddom.pmax + 1) / 2;
  newdata->m_pmap.resize(dom);
  copy(olddata->m_pmap | sbox2d{olddom.pmin, olddom.pmax, {2,2}},
       newdata->m_pmap);

  // 2. Copy the node
  newdata->m_nodes = olddata->m_nodes;

  // 3. Copy the point set and update node first point index/
  newdata->m_S.resize(dom.size());
  unsigned j = 0;
  for (unsigned i = 0; i < olddata->m_S.size(); ++i)
    {
      P p = olddata->m_S[i];
      point2d pt = olddata->m_pmap.point_at_index(p);
      if (K1::is_face_2(pt))
        {
          newdata->m_S[j] = newdata->m_pmap.index_of_point(pt/2);
          auto node = tree.get_node_at(p);
          if (node.get_first_point_id() == i)
            newdata->m_nodes[node.id()].m_point_index = j;
          ++j;
        }
    }
  // 4. Do not forget the sentinel
  newdata->m_nodes[out.npos()].m_point_index = j;

  return out.get_subtree(tree.get_root_id());
}



namespace mln
{
	
	bool is_top (point2d p, unsigned height , unsigned width)
	{
		if (p[0] == 0 )
			return true;
		else 
			return false;
			
	}
	
	bool is_bottom (point2d p, unsigned height , unsigned width)
	{
		if (p[0] == height -1 )
			return true;
		else 
			return false;
			
	}
	
	bool is_left (point2d p, unsigned height , unsigned width)
	{
		if (p[1] == 0 )
			return true;
		else 
			return false;
			
	}

	bool is_right (point2d p, unsigned height , unsigned width)
	{
		if (p[1] == width - 1 )
			return true;
		else 
			return false;
			
	}		
	
	bool is_border (point2d p, unsigned height , unsigned width)
	{
		if (p[0] == 0 or p[0] == height - 1 or p[1] == width -1 or p[1] == 0 )
			return true;
		else 
			return false;
			
	}	
}



void usage(char** argv)
{
  std::cout << "Usage: " << argv[0] << " input[rgb] α₀ α₁ λ output[rgb]\n"
    "α₀\tGrain filter size before merging trees (0 to disable)\n"
    "α₁\tGrain filter size on the color ToS (0 to disable)\n"
    "λ\tMumford-shah regularisation weight (e.g. 5000)\n";
  std::exit(1);
}


int main(int argc, char** argv)
{
  if (argc < 5)
    usage(argv);



  const char* input_path = argv[1];
  int a0 = std::atoi(argv[2]);
  int a1 = std::atoi(argv[3]);
  int lambda = std::atoi(argv[4]);
  const char* output_path = argv[5];


  tbb::task_scheduler_init init;


  std::string inputDirectory = "/media/minh/DATA/Study/database/smartdoc2015/test";
  std::string outputDirectory = "/media/minh/DATA/Study/database/smartdoc2015/out_test";
  DIR *directory = opendir (inputDirectory.c_str());
  DIR *directory1 = opendir (outputDirectory.c_str());
  struct dirent *_dirent = NULL;
  if(directory == NULL)
  {
      printf("Cannot open Input Folder\n");
      return 1;
  }

  if(directory1 == NULL)
  {
      printf("Cannot open Output Folder\n");
      return 1;
  } 


  while((_dirent = readdir(directory)) != NULL)
  {

	if ((std::string(_dirent->d_name) != ".") and (std::string(_dirent->d_name) != "..") )
		{
			
		  std::string namefolder_ord1 = inputDirectory + "/" +std::string(_dirent->d_name); 
		  
		  std::cout << namefolder_ord1 << std::endl;
		  
		  std::stringstream output_folder_ord1;
		  
		  output_folder_ord1<<outputDirectory<<"/"<<std::string(_dirent->d_name);
		  
		  std::string folderCreateCommand_ord1 = "mkdir " + output_folder_ord1.str();
		  system(folderCreateCommand_ord1.c_str());
		  
		  
		  DIR *directory_ord1 = opendir (namefolder_ord1.c_str());		  
		  struct dirent *_dirent1 = NULL;
		  
		  while((_dirent1 = readdir(directory_ord1)) != NULL)
		  {

			if ((std::string(_dirent1->d_name) != ".") and (std::string(_dirent1->d_name) != "..") )
			{
				
				std::string namefolder_ord2 = namefolder_ord1 + "/" +std::string(_dirent1->d_name); 
				std::cout << namefolder_ord2 << std::endl;

				std::stringstream output_folder_ord2;
				  
				output_folder_ord2<<output_folder_ord1.str()<<"/"<<std::string(_dirent1->d_name);
				std::cout << output_folder_ord2.str() << std::endl;
				  
				std::string folderCreateCommand_ord2 = "mkdir " + output_folder_ord2.str();
				system(folderCreateCommand_ord2.c_str());	
				
				
				DIR *directory_ord2 = opendir (namefolder_ord2.c_str());		  
				struct dirent *_dirent2 = NULL;				

				while((_dirent2 = readdir(directory_ord2)) != NULL)
				{

					if ((std::string(_dirent2->d_name) != ".") and (std::string(_dirent2->d_name) != "..") )
					{			
						
						std::string fileName = 	namefolder_ord2 + "/" +std::string(_dirent2->d_name); 
						
						std::cout << fileName << std::endl;
							


						std::stringstream output_folder_ord3;
						  
						output_folder_ord3<<output_folder_ord2.str()<<"/"<< "seg_" <<std::string(_dirent2->d_name);
						std::cout << output_folder_ord3.str() << std::endl;
						  
						std::string folderCreateCommand_ord3 = "mkdir " + output_folder_ord3.str();
						system(folderCreateCommand_ord3.c_str());	

						std::clock_t begin_time = std::clock();
						

						  // 1. Compute the individual ToS
						  using namespace mln;
						  typedef rgb8 V;

						  image2d<V> ima;
						  io::imread(fileName.c_str(), ima);

						  image2d<V> f = addborder(ima, lexicographicalorder_less<value_t>());

						  std::cout << "Domain f  "  << f.domain()  << "Domain ima   "  << ima.domain()  << std::endl;

						  
						  image2d<V> F = interpolate_k1(ima);
						  unsigned height = F.nrows();
						  unsigned width = F.ncols();


						  image2d<V> ima_compo(F.domain() );



						  // COmpute the color tree of shapes T
						  tree_t T;
						  {
							// 1. Compute the marginal ToS and filter them if necessary.
							tree_t t[NTREE];
							tbb::parallel_for(0, (int)NTREE, [&t,&ima,a0](int i){
								t[i] = morpho::cToS(imtransform(ima, [i](value_t x) { return x[i]; }), c4);
								if (a0 > 0) {
								  grain_filter_inplace(t[i], a0);
								  t[i].shrink_to_fit();
								}
							  });


							auto& U0  = t[0]._get_data()->m_Uv;
							auto& U1  = t[1]._get_data()->m_Uv;
							auto& U2  = t[2]._get_data()->m_Uv;
							
							   
							mln_foreach(point2d p1, U0.domain())
							{
								ima_compo(p1)[0] = U0(p1);
								ima_compo(p1)[1] = U1(p1);
								ima_compo(p1)[2] = U2(p1);
							}

							// 2. Compute the Gos.
							MyGraph g2;
							std::array<property_map<tree_t, typename MyGraph::vertex_descriptor>, NTREE> tlink;
							std::tie(g2, tlink) = compute_g2<NTREE>(t);

							// 3. Compute the depth image
							boost::vector_property_map<unsigned> gdepth = compute_graph_depth(g2);
							image2d<uint16> imdepth = imchvalue<uint16>(F);

							write_vmap_to_image(t, &tlink[0], gdepth, imdepth);

							// debug
							// io::imsave(imdepth, "depth.tiff");

							// 4. Compute the saturated maxtree
							std::tie(T, std::ignore) = satmaxtree(imdepth);
							T = tree_keep_2F(T);
							T._reorder_pset();
							
							std::ofstream file("abc.dot",
									 std::ios_base::out | std::ios_base::trunc);
							write_graphviz(file, T);     
							
						  }




							unsigned nodenumbers = T.nodes().size();   

							auto& nodes1 = T._get_data()->m_nodes;
							auto& S     = T._get_data()->m_S;
							auto& pmap  = T._get_data()->m_pmap;
							
							box2d D = pmap.domain();
							
							image2d <uint8_t>  depth(D);	
							extension::fill(depth, 0);
							

							

							
							
							
							// dahu_distance
							

							

							// initiation
							
							
							std::vector<V>  min_node(nodenumbers);
							std::vector<V>  max_node(nodenumbers);
							
							std::vector<V>  min_node_final(nodenumbers);
							std::vector<V>  max_node_final(nodenumbers);	
							
							std::vector<V>  dist(nodenumbers);
							
							image2d<V> distancemap(D );
							image2d<V> min_pixel(D );
							image2d<V> max_pixel(D );
							
							image2d<V> distancemap_final(D );
							image2d<uint8_t> distancemap_final_gray(D );
							image2d<uint8_t> distancemap_final_gray1(D );
								
							std::vector< std::vector<unsigned> > children(nodenumbers);
							
								
							

							///////////////////////////////////////////////////////////////////
							//   top


							for (int k = 0 ; k < 4 ; ++k)
							{
								std::vector<int>  seed_node(nodenumbers);
								std::fill (seed_node.begin(),seed_node.end(),0);	
								seed_node[0]  = 1;
								
								
								std::vector<int>  dejavu_node(nodenumbers);
								std::fill (seed_node.begin(),seed_node.end(),0);  	
								dejavu_node[0]  = 1;			
								
								if (k == 0)
								{
										
									mln_foreach(auto p, D)
									{
										if (is_top(p,height,width) == true)
										{
											dejavu_node[pmap(p)] =1;
											seed_node[pmap(p)] =1;
										}
									}
								}	
									
								if (k == 1)
								{
										
									mln_foreach(auto p, D)
									{
										if (is_bottom(p,height,width) == true)
										{
											dejavu_node[pmap(p)] =1;
											seed_node[pmap(p)] =1;
										}
									}
								}			
								
								
								if (k == 2)
								{
										
									mln_foreach(auto p, D)
									{
										if (is_left(p,height,width) == true)
										{
											dejavu_node[pmap(p)] =1;
											seed_node[pmap(p)] =1;
										}
									}
								}		
								
								
								if (k == 3)
								{
										
									mln_foreach(auto p, D)
									{
										if (is_right(p,height,width) == true)
										{
											dejavu_node[pmap(p)] =1;
											seed_node[pmap(p)] =1;
										}
									}
								}			
									
									//std::cout << "seed node   "  << pmap(seedpoints)  << std::endl;
									
									
									

									std::cout << "initial  step"   << std::endl;
										
									mln_foreach(auto x, T.nodes())
									{
										
										
										std::vector<V> listpixel1;
										
										mln_foreach (auto p, x.proper_pset())
										{			
											listpixel1.push_back(ima_compo(ima_compo.point_at_index(p)));
										
										}
									
										
										std::partial_sort(listpixel1.begin(), listpixel1.begin() + listpixel1.size()/2+1, listpixel1.end(),lexicographicalorder_less<value_t>());

										V medianvalue1;

										medianvalue1 = listpixel1[listpixel1.size()/2];
										//std::cout << "median value"  << medianvalue << "  " << medianvalue1  << std::endl;


										for (int i = 0; i< 3; ++i)
										{
											min_node[x.id()][i] = medianvalue1[i];
											max_node[x.id()][i] = medianvalue1[i];
											
											min_node_final[x.id()][i] = medianvalue1[i];
											max_node_final[x.id()][i] = medianvalue1[i];			
											if (seed_node[x.id() == 1])
												dist[x.id()][i] = 0;
											else
												dist[x.id()][i] = 255;
												
										}							
														
																
										unsigned q = x.get_parent_id();
										children[q].push_back(x.id());

									}
									
									
									


									// test value
									/*
									std::cout << "test value  "  << std::endl;
									mln_foreach(auto x, T.nodes())
									{
										std::cout << "node "  << x.id()  << std::endl;
										for (int i = 0; i < 3; ++i)
										{
											std::cout << "value  " << int(min_node[x.id()][i])  << std::endl;
										}
									}
									
									*/
									

									
									
									std::cout << "chay up len  "  << std::endl;
									
									
									mln_reverse_foreach(auto x, T.nodes())
									{
										if (seed_node[x.id()] == 0)
										{
											//std::cout <<  "node   " <<   x.id()   << std::endl;	
											const unsigned nchildren = children[x.id()].size();			
											//std::cout << "children  "  << nchildren  << std::endl;		
											
											std::vector<V> min_temp(nchildren);
											std::vector<V> max_temp(nchildren);
											std::vector<unsigned> dis_temp(nchildren);
											std::fill (dis_temp.begin(),dis_temp.end(),0);  
											std::fill (min_temp.begin(),min_temp.end(),min_node[x.id()]);  
											std::fill (max_temp.begin(),max_temp.end(),max_node[x.id()]);
													
											unsigned min_dis = 255*3;
											
											for (unsigned j= 0; j< nchildren ; ++j)
											{			
												unsigned child = children[x.id()][j];
												if (dejavu_node[child] == 1)
												{
													//std::cout << "child  "  << child << std::endl;
													for (int i = 0; i< 3; ++i)
													{
														if (min_temp[j][i] > min_node[child][i])
															min_temp[j][i] = min_node[child][i];
														if (max_temp[j][i] < max_node[child][i])
															max_temp[j][i] = max_node[child][i];	
														dis_temp[j] = 	dis_temp[j] + 	max_temp[j][i] -  min_temp[j][i];		
													}
													//std::cout <<  "dis_temp   "  << dis_temp[j]  << std::endl;
													
													dejavu_node[x.id()] = 1;				
												}
												else
													dis_temp[j] = 255*3;
													
													
												if (dis_temp[j] < min_dis )
												{
													//std::cout  << "updated  "  << std::endl;
													for (int i = 0; i< 3; ++i)
													{
														min_node[x.id()][i] = min_temp[j][i];
														max_node[x.id()][i] = max_temp[j][i];					
													}
												}
											}
										}
										
									}
									
									// test value

									std::cout << "test value sau khi chay up "  << std::endl;
									/*
									mln_reverse_foreach(auto x, T.nodes())
									{
										std::cout << "node "  << x.id()  << std::endl;
										for (int i = 0; i < 3; ++i)
										{
											std::cout << "value min  " << int(min_node[x.id()][i])  << std::endl;
											std::cout << "value max  " << int(max_node[x.id()][i])  << std::endl;

										}
									}
									
									*/

									
									
									std::cout << "chay down xuong  "  << std::endl;
									
									mln_foreach(auto x, T.nodes())
									{
										if (seed_node[x.id()] == 0)
										{
											
											
											//std::cout <<  "node   " <<   x.id()   << std::endl;	
											unsigned min_dis = 0;
											V min_temp  = min_node_final[x.id()];
											V max_temp  = max_node_final[x.id()];
											unsigned dis_temp = 0;


											if (dejavu_node[x.id()] == 1)
											{
												for (int i = 0; i< 3; ++i)
												{
													min_dis = min_dis + max_node[x.id()][i] -  min_node[x.id()][i];		

												}

											}
											else
												min_dis = 255*3;
												
											//std::cout << "min_dis  "  << min_dis  << std::endl;
											
											
											for (int i = 0; i< 3; ++i)
											{
												if (min_temp[i] > min_node[x.get_parent_id()][i])
													min_temp[i] = min_node[x.get_parent_id()][i];
												if (max_temp[i] < max_node[x.get_parent_id()][i])
													max_temp[i] = max_node[x.get_parent_id()][i];	
												dis_temp = 	dis_temp + 	max_temp[i] -  min_temp[i];		
											}	
											//std::cout << "dis_temp  "  << dis_temp  << std::endl;
												
											if (dis_temp < min_dis)
											{
												//std::cout  << "updated  "  << std::endl;
												
												for (int i = 0; i< 3; ++i)
												{
													min_node[x.id()][i] = min_temp[i];
													max_node[x.id()][i] = max_temp[i];					
												}
											}
											
										}
									}
									
									
									// test value

									std::cout << "test value sau khi chay down "  << std::endl;
									/*
									mln_foreach(auto x, T.nodes())
									{
										//std::cout << "node "  << x.id()  << std::endl;
										for (int i = 0; i < 3; ++i)
										{
											std::cout << "value min  " << int(min_node[x.id()][i])  << std::endl;
											std::cout << "value max  " << int(max_node[x.id()][i])  << std::endl;

										}
									}	
									*/
									
									//  back propagation
									mln_foreach(auto x, T.nodes())
									{
										mln_foreach (auto p, x.proper_pset())
										{
											for (int i = 0; i< 3; ++i)
											{
												min_pixel(F.point_at_index(p))[i] = min_node[x.id()][i];
												max_pixel(F.point_at_index(p))[i] = max_node[x.id()][i];		
												distancemap(F.point_at_index(p))[i] = 	max_pixel(F.point_at_index(p))[i] -  min_pixel(F.point_at_index(p))[i] ;	
												distancemap_final(F.point_at_index(p))[i] =  (distancemap_final(F.point_at_index(p))[i] * (k + 1) + distancemap(F.point_at_index(p))[i] )	/(k+2);				
															
											}
											distancemap_final_gray(F.point_at_index(p)) =  distancemap_final(F.point_at_index(p))[0]/3+ 	distancemap_final(F.point_at_index(p))[1]/3 + distancemap_final(F.point_at_index(p))[2]/3		;

										}
									}	
									
									
													
									
								if (k == 0)
								{	
									std::string fileName_top = outputDirectory + "/" + "top_" + std::string(_dirent->d_name);
									//io::imsave(distancemap, fileName_top.c_str());	
								}

								if (k == 1)
								{	
									std::string fileName_bottom = outputDirectory + "/" + "bottom_" + std::string(_dirent->d_name);

									//io::imsave(distancemap, fileName_bottom.c_str());	
								}
								
								if (k == 2)
								{	
									std::string fileName_left = outputDirectory + "/" + "left_" + std::string(_dirent->d_name);

									//io::imsave(distancemap, fileName_left.c_str());	
								}		
								
								if (k == 3)
								{	
									std::string fileName_right = outputDirectory + "/" + "right_" + std::string(_dirent->d_name);

									//io::imsave(distancemap, fileName_right.c_str());	
								}	
								
										
								std::string fileName_combined = outputDirectory + "/" + "combined_" + std::string(_dirent->d_name);				
								//io::imsave(distancemap_final, fileName_combined.c_str());	
								

							}
							
							uint8_t max_gray = 1;

							mln_foreach(auto x, T.nodes())
							{
								mln_foreach (auto p1, x.proper_pset())
								{

									if (distancemap_final_gray(F.point_at_index(p1)) > max_gray)
									{
										max_gray = distancemap_final_gray(F.point_at_index(p1)) ;
									}
								}
							}	

							mln_foreach(auto x, T.nodes())
							{
								mln_foreach (auto p1, x.proper_pset())
								{
									distancemap_final_gray1(F.point_at_index(p1)) =  (255 * float(distancemap_final_gray(F.point_at_index(p1)))/ float(max_gray) );
								}
							}	
						
									

						fileName = output_folder_ord2.str() + "/" + std::string(_dirent2->d_name);

						io::imsave(distancemap_final_gray1, fileName.c_str());		
				
						
						image2d<uint16> saliencymap(D);
						
						mln_foreach(auto x, T.nodes())
						{
							mln_foreach (auto p1, x.proper_pset())
							{
								saliencymap(F.point_at_index(p1)) = distancemap_final_gray1(F.point_at_index(p1)) ;
							}
						}							
						
						
						tree_t max_T;
						std::tie(max_T, std::ignore) = satmaxtree(saliencymap);
						max_T = tree_keep_2F(max_T);
						max_T._reorder_pset();
						
						
						
						std::string folder = "dkm";
						std::string folderCreateCommand = "mkdir " + folder;
						system(folderCreateCommand.c_str());	

						std::stringstream aa;
						aa<<folder<<"/"<<std::string(_dirent->d_name);
									
						//std::string folderName = std::string(_dirent->d_name);	
						std::string folderCreateCommand1 = "mkdir " + aa.str();
						system(folderCreateCommand1.c_str());



						std::stringstream ss;
						std::string name = "image_";
						std::string type = ".png";						
						
						
						unsigned nodemaxtree = max_T.nodes().size();   
						
						//image2d<value::int_u8> mask(D);
						
						
						std::vector <int>  node_size(nodemaxtree, 0);
						std::fill(node_size.begin(), node_size.end(), 0);
						
						mln_reverse_foreach(auto x, max_T.nodes())
						{
							mln_foreach (auto p, x.proper_pset())
							{
								node_size[x.id()] = node_size[x.id()] + 1;
							}
							node_size[x.get_parent_id()] = node_size[x.get_parent_id()] + node_size[x.id()];
							
							//std::cout << node_size[x.id()]  << std::endl;
						}
						
						
						
						mln_foreach(auto x, max_T.nodes())
						{
							//std::cout << "x.id "  << x.id()    << std::endl;
							//std::vector<point2d> listpixel1;
							
							std::vector <uint8_t>  under(nodemaxtree, 0);
							std::fill(under.begin(), under.end(), 0);
							
							image2d <uint8_t > under_ima(D);
							extension::fill(under_ima, 0);	
							
							under[x.id() ] = 255;	
							
							mln_foreach(auto y, max_T.nodes())
							{
							
								if ((under[y.id()] == 0) and (under[y.get_parent_id()] == 255))
								{
									under[y.id()] = under[y.get_parent_id()];
									mln_foreach (auto p, y.proper_pset())
									{			
										//listpixel1.push_back(F.point_at_index(p));		
										under_ima(F.point_at_index(p)) = under[y.id()];
									}			
								}
								else
								{
									mln_foreach (auto p, y.proper_pset())
									{
										under_ima(F.point_at_index(p)) = under[y.id()];
										//std::cout << F.point_at_index(p)  <<  "   "  << x.id() << "   "  << under_ima(F.point_at_index(p)) << std::endl;
										
									}		
								}
								
								//std::cout << "y.id "  << y.id() << "  "  << under[y.id()]  << std::endl;

							
							}
									

							if (node_size[x.id()]   > 30000)	
							{
								//ss<<aa.str()<<"/"<<name<<  std::to_string(x.id())<<type;
								ss<<output_folder_ord3.str()<<"/"<<name<<std::to_string(x.id())<<type;

								std::string fullPath = ss.str();
								ss.str("");													
								io::imsave(under_ima, fullPath);
							}

						}
						
						
						std::clock_t end_time = std::clock();
						
						std::cout <<"save image" <<float(  end_time - begin_time  ) /  CLOCKS_PER_SEC <<std::endl;	


		
						}
					}
					
					closedir(directory_ord2);		
		
				}
			}
			
			closedir(directory_ord1);		
		
		
		}
    }
    
    closedir(directory);	
	

		

}
