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
include tests/morpho/CMakeFiles/opening.dir/depend.make

# Include the progress variables for this target.
include tests/morpho/CMakeFiles/opening.dir/progress.make

# Include the compile flags for this target's objects.
include tests/morpho/CMakeFiles/opening.dir/flags.make

tests/morpho/CMakeFiles/opening.dir/opening.cpp.o: tests/morpho/CMakeFiles/opening.dir/flags.make
tests/morpho/CMakeFiles/opening.dir/opening.cpp.o: ../tests/morpho/opening.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/morpho/CMakeFiles/opening.dir/opening.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opening.dir/opening.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/tests/morpho/opening.cpp

tests/morpho/CMakeFiles/opening.dir/opening.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opening.dir/opening.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/tests/morpho/opening.cpp > CMakeFiles/opening.dir/opening.cpp.i

tests/morpho/CMakeFiles/opening.dir/opening.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opening.dir/opening.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/tests/morpho/opening.cpp -o CMakeFiles/opening.dir/opening.cpp.s

tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.requires:
.PHONY : tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.requires

tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.provides: tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.requires
	$(MAKE) -f tests/morpho/CMakeFiles/opening.dir/build.make tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.provides.build
.PHONY : tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.provides

tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.provides.build: tests/morpho/CMakeFiles/opening.dir/opening.cpp.o

# Object files for target opening
opening_OBJECTS = \
"CMakeFiles/opening.dir/opening.cpp.o"

# External object files for target opening
opening_EXTERNAL_OBJECTS =

tests/morpho/opening: tests/morpho/CMakeFiles/opening.dir/opening.cpp.o
tests/morpho/opening: tests/morpho/CMakeFiles/opening.dir/build.make
tests/morpho/opening: /usr/lib/libtbb.so
tests/morpho/opening: /usr/lib/libtbbmalloc.so
tests/morpho/opening: /lrde/home/movn/local/include/boost/lib/libboost_unit_test_framework.so
tests/morpho/opening: /usr/lib/libfreeimage.so
tests/morpho/opening: tests/morpho/CMakeFiles/opening.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable opening"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opening.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/morpho/CMakeFiles/opening.dir/build: tests/morpho/opening
.PHONY : tests/morpho/CMakeFiles/opening.dir/build

tests/morpho/CMakeFiles/opening.dir/requires: tests/morpho/CMakeFiles/opening.dir/opening.cpp.o.requires
.PHONY : tests/morpho/CMakeFiles/opening.dir/requires

tests/morpho/CMakeFiles/opening.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho && $(CMAKE_COMMAND) -P CMakeFiles/opening.dir/cmake_clean.cmake
.PHONY : tests/morpho/CMakeFiles/opening.dir/clean

tests/morpho/CMakeFiles/opening.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/tests/morpho /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho /lrde/home/movn/Documents/code/code_edwin/program/tests/morpho/CMakeFiles/opening.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/morpho/CMakeFiles/opening.dir/depend
