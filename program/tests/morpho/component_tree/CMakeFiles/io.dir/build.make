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
include tests/morpho/component_tree/CMakeFiles/io.dir/depend.make

# Include the progress variables for this target.
include tests/morpho/component_tree/CMakeFiles/io.dir/progress.make

# Include the compile flags for this target's objects.
include tests/morpho/component_tree/CMakeFiles/io.dir/flags.make

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o: tests/morpho/component_tree/CMakeFiles/io.dir/flags.make
tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o: ../tests/morpho/component_tree/io.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/io.dir/io.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/tests/morpho/component_tree/io.cpp

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/io.dir/io.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/tests/morpho/component_tree/io.cpp > CMakeFiles/io.dir/io.cpp.i

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/io.dir/io.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/tests/morpho/component_tree/io.cpp -o CMakeFiles/io.dir/io.cpp.s

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.requires:
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.requires

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.provides: tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.requires
	$(MAKE) -f tests/morpho/component_tree/CMakeFiles/io.dir/build.make tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.provides.build
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.provides

tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.provides.build: tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o

# Object files for target io
io_OBJECTS = \
"CMakeFiles/io.dir/io.cpp.o"

# External object files for target io
io_EXTERNAL_OBJECTS =

tests/morpho/component_tree/io: tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o
tests/morpho/component_tree/io: tests/morpho/component_tree/CMakeFiles/io.dir/build.make
tests/morpho/component_tree/io: /usr/lib/libtbb.so
tests/morpho/component_tree/io: /usr/lib/libtbbmalloc.so
tests/morpho/component_tree/io: /lrde/home/movn/local/include/boost/lib/libboost_unit_test_framework.so
tests/morpho/component_tree/io: /usr/lib/libfreeimage.so
tests/morpho/component_tree/io: tests/morpho/component_tree/CMakeFiles/io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable io"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/morpho/component_tree/CMakeFiles/io.dir/build: tests/morpho/component_tree/io
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/build

tests/morpho/component_tree/CMakeFiles/io.dir/requires: tests/morpho/component_tree/CMakeFiles/io.dir/io.cpp.o.requires
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/requires

tests/morpho/component_tree/CMakeFiles/io.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree && $(CMAKE_COMMAND) -P CMakeFiles/io.dir/cmake_clean.cmake
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/clean

tests/morpho/component_tree/CMakeFiles/io.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/tests/morpho/component_tree /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/component_tree/CMakeFiles/io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/morpho/component_tree/CMakeFiles/io.dir/depend

