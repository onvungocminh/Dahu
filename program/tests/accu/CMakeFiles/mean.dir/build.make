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
include tests/accu/CMakeFiles/mean.dir/depend.make

# Include the progress variables for this target.
include tests/accu/CMakeFiles/mean.dir/progress.make

# Include the compile flags for this target's objects.
include tests/accu/CMakeFiles/mean.dir/flags.make

tests/accu/CMakeFiles/mean.dir/mean.cpp.o: tests/accu/CMakeFiles/mean.dir/flags.make
tests/accu/CMakeFiles/mean.dir/mean.cpp.o: ../tests/accu/mean.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/accu/CMakeFiles/mean.dir/mean.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/accu && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mean.dir/mean.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/tests/accu/mean.cpp

tests/accu/CMakeFiles/mean.dir/mean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mean.dir/mean.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/accu && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/tests/accu/mean.cpp > CMakeFiles/mean.dir/mean.cpp.i

tests/accu/CMakeFiles/mean.dir/mean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mean.dir/mean.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/accu && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/tests/accu/mean.cpp -o CMakeFiles/mean.dir/mean.cpp.s

tests/accu/CMakeFiles/mean.dir/mean.cpp.o.requires:
.PHONY : tests/accu/CMakeFiles/mean.dir/mean.cpp.o.requires

tests/accu/CMakeFiles/mean.dir/mean.cpp.o.provides: tests/accu/CMakeFiles/mean.dir/mean.cpp.o.requires
	$(MAKE) -f tests/accu/CMakeFiles/mean.dir/build.make tests/accu/CMakeFiles/mean.dir/mean.cpp.o.provides.build
.PHONY : tests/accu/CMakeFiles/mean.dir/mean.cpp.o.provides

tests/accu/CMakeFiles/mean.dir/mean.cpp.o.provides.build: tests/accu/CMakeFiles/mean.dir/mean.cpp.o

# Object files for target mean
mean_OBJECTS = \
"CMakeFiles/mean.dir/mean.cpp.o"

# External object files for target mean
mean_EXTERNAL_OBJECTS =

tests/accu/mean: tests/accu/CMakeFiles/mean.dir/mean.cpp.o
tests/accu/mean: tests/accu/CMakeFiles/mean.dir/build.make
tests/accu/mean: /usr/lib/libtbb.so
tests/accu/mean: /usr/lib/libtbbmalloc.so
tests/accu/mean: /lrde/home/movn/local/include/boost/lib/libboost_unit_test_framework.so
tests/accu/mean: tests/accu/CMakeFiles/mean.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable mean"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/accu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mean.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/accu/CMakeFiles/mean.dir/build: tests/accu/mean
.PHONY : tests/accu/CMakeFiles/mean.dir/build

tests/accu/CMakeFiles/mean.dir/requires: tests/accu/CMakeFiles/mean.dir/mean.cpp.o.requires
.PHONY : tests/accu/CMakeFiles/mean.dir/requires

tests/accu/CMakeFiles/mean.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/accu && $(CMAKE_COMMAND) -P CMakeFiles/mean.dir/cmake_clean.cmake
.PHONY : tests/accu/CMakeFiles/mean.dir/clean

tests/accu/CMakeFiles/mean.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/tests/accu /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/tests/accu /lrde/home/movn/Documents/code/code_edwin/program/tests/accu/CMakeFiles/mean.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/accu/CMakeFiles/mean.dir/depend

