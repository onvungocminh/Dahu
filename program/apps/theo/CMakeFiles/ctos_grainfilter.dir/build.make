# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /lrde/home/movn/Documents/code/code_edwin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /lrde/home/movn/Documents/code/code_edwin/program

# Include any dependencies generated for this target.
include apps/theo/CMakeFiles/ctos_grainfilter.dir/depend.make

# Include the progress variables for this target.
include apps/theo/CMakeFiles/ctos_grainfilter.dir/progress.make

# Include the compile flags for this target's objects.
include apps/theo/CMakeFiles/ctos_grainfilter.dir/flags.make

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o: apps/theo/CMakeFiles/ctos_grainfilter.dir/flags.make
apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o: ../apps/theo/ctos_grainfilter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/theo && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/apps/theo/ctos_grainfilter.cpp

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/theo && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/apps/theo/ctos_grainfilter.cpp > CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.i

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/theo && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/apps/theo/ctos_grainfilter.cpp -o CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.s

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.requires:
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.requires

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.provides: apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.requires
	$(MAKE) -f apps/theo/CMakeFiles/ctos_grainfilter.dir/build.make apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.provides.build
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.provides

apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.provides.build: apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o

# Object files for target ctos_grainfilter
ctos_grainfilter_OBJECTS = \
"CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o"

# External object files for target ctos_grainfilter
ctos_grainfilter_EXTERNAL_OBJECTS = \
"/lrde/home/movn/Documents/code/code_edwin/program/apps/g2/CMakeFiles/g2-tools.dir/satmaxtree.cpp.o" \
"/lrde/home/movn/Documents/code/code_edwin/program/apps/g2/CMakeFiles/g2-tools.dir/compute_ctos.cpp.o" \
"/lrde/home/movn/Documents/code/code_edwin/program/apps/g2/CMakeFiles/g2-tools.dir/routines.cpp.o" \
"/lrde/home/movn/Documents/code/code_edwin/program/apps/g2/CMakeFiles/g2-tools.dir/compute_g2.cpp.o"

apps/theo/ctos_grainfilter: apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o
apps/theo/ctos_grainfilter: apps/g2/CMakeFiles/g2-tools.dir/satmaxtree.cpp.o
apps/theo/ctos_grainfilter: apps/g2/CMakeFiles/g2-tools.dir/compute_ctos.cpp.o
apps/theo/ctos_grainfilter: apps/g2/CMakeFiles/g2-tools.dir/routines.cpp.o
apps/theo/ctos_grainfilter: apps/g2/CMakeFiles/g2-tools.dir/compute_g2.cpp.o
apps/theo/ctos_grainfilter: apps/theo/CMakeFiles/ctos_grainfilter.dir/build.make
apps/theo/ctos_grainfilter: /usr/lib/libtbb.so
apps/theo/ctos_grainfilter: /usr/lib/libtbbmalloc.so
apps/theo/ctos_grainfilter: /usr/lib/libfreeimage.so
apps/theo/ctos_grainfilter: apps/theo/CMakeFiles/ctos_grainfilter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ctos_grainfilter"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/theo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ctos_grainfilter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/theo/CMakeFiles/ctos_grainfilter.dir/build: apps/theo/ctos_grainfilter
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/build

apps/theo/CMakeFiles/ctos_grainfilter.dir/requires: apps/theo/CMakeFiles/ctos_grainfilter.dir/ctos_grainfilter.cpp.o.requires
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/requires

apps/theo/CMakeFiles/ctos_grainfilter.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/theo && $(CMAKE_COMMAND) -P CMakeFiles/ctos_grainfilter.dir/cmake_clean.cmake
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/clean

apps/theo/CMakeFiles/ctos_grainfilter.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/apps/theo /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/apps/theo /lrde/home/movn/Documents/code/code_edwin/program/apps/theo/CMakeFiles/ctos_grainfilter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/theo/CMakeFiles/ctos_grainfilter.dir/depend
