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
include apps/attributes/CMakeFiles/MSER-cli.dir/depend.make

# Include the progress variables for this target.
include apps/attributes/CMakeFiles/MSER-cli.dir/progress.make

# Include the compile flags for this target's objects.
include apps/attributes/CMakeFiles/MSER-cli.dir/flags.make

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o: apps/attributes/CMakeFiles/MSER-cli.dir/flags.make
apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o: ../apps/attributes/MSER-cli.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/apps/attributes/MSER-cli.cpp

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSER-cli.dir/MSER-cli.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/apps/attributes/MSER-cli.cpp > CMakeFiles/MSER-cli.dir/MSER-cli.cpp.i

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSER-cli.dir/MSER-cli.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/apps/attributes/MSER-cli.cpp -o CMakeFiles/MSER-cli.dir/MSER-cli.cpp.s

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.requires:
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.requires

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.provides: apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.requires
	$(MAKE) -f apps/attributes/CMakeFiles/MSER-cli.dir/build.make apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.provides.build
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.provides

apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.provides.build: apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o: apps/attributes/CMakeFiles/MSER-cli.dir/flags.make
apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o: ../apps/attributes/attributes.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /lrde/home/movn/Documents/code/code_edwin/program/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MSER-cli.dir/attributes.cpp.o -c /lrde/home/movn/Documents/code/code_edwin/apps/attributes/attributes.cpp

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MSER-cli.dir/attributes.cpp.i"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /lrde/home/movn/Documents/code/code_edwin/apps/attributes/attributes.cpp > CMakeFiles/MSER-cli.dir/attributes.cpp.i

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MSER-cli.dir/attributes.cpp.s"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && /usr/local/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /lrde/home/movn/Documents/code/code_edwin/apps/attributes/attributes.cpp -o CMakeFiles/MSER-cli.dir/attributes.cpp.s

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.requires:
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.requires

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.provides: apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.requires
	$(MAKE) -f apps/attributes/CMakeFiles/MSER-cli.dir/build.make apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.provides.build
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.provides

apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.provides.build: apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o

# Object files for target MSER-cli
MSER__cli_OBJECTS = \
"CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o" \
"CMakeFiles/MSER-cli.dir/attributes.cpp.o"

# External object files for target MSER-cli
MSER__cli_EXTERNAL_OBJECTS =

apps/attributes/MSER-cli: apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o
apps/attributes/MSER-cli: apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o
apps/attributes/MSER-cli: apps/attributes/CMakeFiles/MSER-cli.dir/build.make
apps/attributes/MSER-cli: /usr/lib/libtbb.so
apps/attributes/MSER-cli: /usr/lib/libtbbmalloc.so
apps/attributes/MSER-cli: /usr/lib/libfreeimage.so
apps/attributes/MSER-cli: /lrde/home/movn/local/include/boost/lib/libboost_program_options.so
apps/attributes/MSER-cli: apps/attributes/CMakeFiles/MSER-cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable MSER-cli"
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MSER-cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/attributes/CMakeFiles/MSER-cli.dir/build: apps/attributes/MSER-cli
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/build

apps/attributes/CMakeFiles/MSER-cli.dir/requires: apps/attributes/CMakeFiles/MSER-cli.dir/MSER-cli.cpp.o.requires
apps/attributes/CMakeFiles/MSER-cli.dir/requires: apps/attributes/CMakeFiles/MSER-cli.dir/attributes.cpp.o.requires
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/requires

apps/attributes/CMakeFiles/MSER-cli.dir/clean:
	cd /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes && $(CMAKE_COMMAND) -P CMakeFiles/MSER-cli.dir/cmake_clean.cmake
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/clean

apps/attributes/CMakeFiles/MSER-cli.dir/depend:
	cd /lrde/home/movn/Documents/code/code_edwin/program && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lrde/home/movn/Documents/code/code_edwin /lrde/home/movn/Documents/code/code_edwin/apps/attributes /lrde/home/movn/Documents/code/code_edwin/program /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes /lrde/home/movn/Documents/code/code_edwin/program/apps/attributes/CMakeFiles/MSER-cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/attributes/CMakeFiles/MSER-cli.dir/depend

