# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/jakub/NGT-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jakub/NGT-master/build

# Include any dependencies generated for this target.
include bin/ngtq/CMakeFiles/ngtq_exe.dir/depend.make

# Include the progress variables for this target.
include bin/ngtq/CMakeFiles/ngtq_exe.dir/progress.make

# Include the compile flags for this target's objects.
include bin/ngtq/CMakeFiles/ngtq_exe.dir/flags.make

bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.o: bin/ngtq/CMakeFiles/ngtq_exe.dir/flags.make
bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.o: ../bin/ngtq/ngtq.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jakub/NGT-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.o"
	cd /home/jakub/NGT-master/build/bin/ngtq && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ngtq_exe.dir/ngtq.cpp.o -c /home/jakub/NGT-master/bin/ngtq/ngtq.cpp

bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngtq_exe.dir/ngtq.cpp.i"
	cd /home/jakub/NGT-master/build/bin/ngtq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/NGT-master/bin/ngtq/ngtq.cpp > CMakeFiles/ngtq_exe.dir/ngtq.cpp.i

bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngtq_exe.dir/ngtq.cpp.s"
	cd /home/jakub/NGT-master/build/bin/ngtq && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/NGT-master/bin/ngtq/ngtq.cpp -o CMakeFiles/ngtq_exe.dir/ngtq.cpp.s

# Object files for target ngtq_exe
ngtq_exe_OBJECTS = \
"CMakeFiles/ngtq_exe.dir/ngtq.cpp.o"

# External object files for target ngtq_exe
ngtq_exe_EXTERNAL_OBJECTS =

bin/ngtq/ngtq: bin/ngtq/CMakeFiles/ngtq_exe.dir/ngtq.cpp.o
bin/ngtq/ngtq: bin/ngtq/CMakeFiles/ngtq_exe.dir/build.make
bin/ngtq/ngtq: lib/NGT/libngt.so.1.12.2
bin/ngtq/ngtq: bin/ngtq/CMakeFiles/ngtq_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jakub/NGT-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ngtq"
	cd /home/jakub/NGT-master/build/bin/ngtq && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngtq_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/ngtq/CMakeFiles/ngtq_exe.dir/build: bin/ngtq/ngtq

.PHONY : bin/ngtq/CMakeFiles/ngtq_exe.dir/build

bin/ngtq/CMakeFiles/ngtq_exe.dir/clean:
	cd /home/jakub/NGT-master/build/bin/ngtq && $(CMAKE_COMMAND) -P CMakeFiles/ngtq_exe.dir/cmake_clean.cmake
.PHONY : bin/ngtq/CMakeFiles/ngtq_exe.dir/clean

bin/ngtq/CMakeFiles/ngtq_exe.dir/depend:
	cd /home/jakub/NGT-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakub/NGT-master /home/jakub/NGT-master/bin/ngtq /home/jakub/NGT-master/build /home/jakub/NGT-master/build/bin/ngtq /home/jakub/NGT-master/build/bin/ngtq/CMakeFiles/ngtq_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/ngtq/CMakeFiles/ngtq_exe.dir/depend
