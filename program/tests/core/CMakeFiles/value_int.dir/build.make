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
include tests/core/CMakeFiles/value_int.dir/depend.make

# Include the progress variables for this target.
include tests/core/CMakeFiles/value_int.dir/progress.make

# Include the compile flags for this target's objects.
include tests/core/CMakeFiles/value_int.dir/flags.make

tests/core/CMakeFiles/value_int.dir/value/int.cpp.o: tests/core/CMakeFiles/value_int.dir/flags.make
tests/core/CMakeFiles/value_int.dir/value/int.cpp.o: ../tests/core/value/int.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/core/CMakeFiles/value_int.dir/value/int.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/core && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/value_int.dir/value/int.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/tests/core/value/int.cpp

tests/core/CMakeFiles/value_int.dir/value/int.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/value_int.dir/value/int.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/core && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/tests/core/value/int.cpp > CMakeFiles/value_int.dir/value/int.cpp.i

tests/core/CMakeFiles/value_int.dir/value/int.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/value_int.dir/value/int.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/core && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/tests/core/value/int.cpp -o CMakeFiles/value_int.dir/value/int.cpp.s

tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.requires:
.PHONY : tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.requires

tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.provides: tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.requires
	$(MAKE) -f tests/core/CMakeFiles/value_int.dir/build.make tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.provides.build
.PHONY : tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.provides

tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.provides.build: tests/core/CMakeFiles/value_int.dir/value/int.cpp.o

# Object files for target value_int
value_int_OBJECTS = \
"CMakeFiles/value_int.dir/value/int.cpp.o"

# External object files for target value_int
value_int_EXTERNAL_OBJECTS =

tests/core/value_int: tests/core/CMakeFiles/value_int.dir/value/int.cpp.o
tests/core/value_int: tests/core/CMakeFiles/value_int.dir/build.make
tests/core/value_int: /usr/lib/libtbb.so
tests/core/value_int: /usr/lib/libtbbmalloc.so
tests/core/value_int: /lrde/home/movn/local/include/boost/lib/libboost_unit_test_framework.so
tests/core/value_int: tests/core/CMakeFiles/value_int.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable value_int"
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/value_int.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/core/CMakeFiles/value_int.dir/build: tests/core/value_int
.PHONY : tests/core/CMakeFiles/value_int.dir/build

tests/core/CMakeFiles/value_int.dir/requires: tests/core/CMakeFiles/value_int.dir/value/int.cpp.o.requires
.PHONY : tests/core/CMakeFiles/value_int.dir/requires

tests/core/CMakeFiles/value_int.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/tests/core && $(CMAKE_COMMAND) -P CMakeFiles/value_int.dir/cmake_clean.cmake
.PHONY : tests/core/CMakeFiles/value_int.dir/clean

tests/core/CMakeFiles/value_int.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/tests/core /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/tests/core /lrde/home/movn/Documents/code/code_edwin/program/tests/core/CMakeFiles/value_int.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/core/CMakeFiles/value_int.dir/depend

