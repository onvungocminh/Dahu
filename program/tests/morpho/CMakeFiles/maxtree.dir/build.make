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
include tests/morpho/CMakeFiles/maxtree.dir/depend.make

# Include the progress variables for this target.
include tests/morpho/CMakeFiles/maxtree.dir/progress.make

# Include the compile flags for this target's objects.
include tests/morpho/CMakeFiles/maxtree.dir/flags.make

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o: tests/morpho/CMakeFiles/maxtree.dir/flags.make
tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o: ../tests/morpho/maxtree.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/maxtree.dir/maxtree.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/tests/morpho/maxtree.cpp

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/maxtree.dir/maxtree.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/tests/morpho/maxtree.cpp > CMakeFiles/maxtree.dir/maxtree.cpp.i

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/maxtree.dir/maxtree.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/tests/morpho/maxtree.cpp -o CMakeFiles/maxtree.dir/maxtree.cpp.s

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.requires:
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.requires

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.provides: tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.requires
	$(MAKE) -f tests/morpho/CMakeFiles/maxtree.dir/build.make tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.provides.build
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.provides

tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.provides.build: tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o

# Object files for target maxtree
maxtree_OBJECTS = \
"CMakeFiles/maxtree.dir/maxtree.cpp.o"

# External object files for target maxtree
maxtree_EXTERNAL_OBJECTS =

tests/morpho/maxtree_old: tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o
tests/morpho/maxtree_old: tests/morpho/CMakeFiles/maxtree.dir/build.make
tests/morpho/maxtree_old: /usr/lib/libtbb.so
tests/morpho/maxtree_old: /usr/lib/libtbbmalloc.so
tests/morpho/maxtree_old: /lrde/home/movn/local/include/boost/lib/libboost_unit_test_framework.so
tests/morpho/maxtree_old: tests/morpho/CMakeFiles/maxtree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable maxtree_old"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/maxtree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/morpho/CMakeFiles/maxtree.dir/build: tests/morpho/maxtree_old
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/build

tests/morpho/CMakeFiles/maxtree.dir/requires: tests/morpho/CMakeFiles/maxtree.dir/maxtree.cpp.o.requires
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/requires

tests/morpho/CMakeFiles/maxtree.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && $(CMAKE_COMMAND) -P CMakeFiles/maxtree.dir/cmake_clean.cmake
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/clean

tests/morpho/CMakeFiles/maxtree.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/tests/morpho /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/CMakeFiles/maxtree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/morpho/CMakeFiles/maxtree.dir/depend

