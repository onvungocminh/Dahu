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
include apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/depend.make

# Include the progress variables for this target.
include apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/progress.make

# Include the compile flags for this target's objects.
include apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/flags.make

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/flags.make
apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o: ../apps/mumford_shah_on_tree/mumford_shah_on_tree.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/apps/mumford_shah_on_tree/mumford_shah_on_tree.cpp

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/apps/mumford_shah_on_tree/mumford_shah_on_tree.cpp > CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.i

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/apps/mumford_shah_on_tree/mumford_shah_on_tree.cpp -o CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.s

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.requires:
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.requires

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.provides: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.requires
	$(MAKE) -f apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/build.make apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.provides.build
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.provides

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.provides.build: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o

# Object files for target mumford_shah_on_tree
mumford_shah_on_tree_OBJECTS = \
"CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o"

# External object files for target mumford_shah_on_tree
mumford_shah_on_tree_EXTERNAL_OBJECTS =

apps/mumford_shah_on_tree/mumford_shah_on_tree: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o
apps/mumford_shah_on_tree/mumford_shah_on_tree: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/build.make
apps/mumford_shah_on_tree/mumford_shah_on_tree: /usr/lib/libtbb.so
apps/mumford_shah_on_tree/mumford_shah_on_tree: /usr/lib/libtbbmalloc.so
apps/mumford_shah_on_tree/mumford_shah_on_tree: /usr/lib/libfreeimage.so
apps/mumford_shah_on_tree/mumford_shah_on_tree: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mumford_shah_on_tree"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mumford_shah_on_tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/build: apps/mumford_shah_on_tree/mumford_shah_on_tree
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/build

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/requires: apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/mumford_shah_on_tree.cpp.o.requires
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/requires

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree && $(CMAKE_COMMAND) -P CMakeFiles/mumford_shah_on_tree.dir/cmake_clean.cmake
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/clean

apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/apps/mumford_shah_on_tree /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree /lrde/home/movn/Documents/code/code_edwin/program/apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/mumford_shah_on_tree/CMakeFiles/mumford_shah_on_tree.dir/depend

