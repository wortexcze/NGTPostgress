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
include bin/ngt/CMakeFiles/ngt_exe.dir/depend.make

# Include the progress variables for this target.
include bin/ngt/CMakeFiles/ngt_exe.dir/progress.make

# Include the compile flags for this target's objects.
include bin/ngt/CMakeFiles/ngt_exe.dir/flags.make

bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.o: bin/ngt/CMakeFiles/ngt_exe.dir/flags.make
bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.o: ../bin/ngt/ngt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jakub/NGT-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.o"
	cd /home/jakub/NGT-master/build/bin/ngt && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ngt_exe.dir/ngt.cpp.o -c /home/jakub/NGT-master/bin/ngt/ngt.cpp

bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngt_exe.dir/ngt.cpp.i"
	cd /home/jakub/NGT-master/build/bin/ngt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jakub/NGT-master/bin/ngt/ngt.cpp > CMakeFiles/ngt_exe.dir/ngt.cpp.i

bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngt_exe.dir/ngt.cpp.s"
	cd /home/jakub/NGT-master/build/bin/ngt && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jakub/NGT-master/bin/ngt/ngt.cpp -o CMakeFiles/ngt_exe.dir/ngt.cpp.s

# Object files for target ngt_exe
ngt_exe_OBJECTS = \
"CMakeFiles/ngt_exe.dir/ngt.cpp.o"

# External object files for target ngt_exe
ngt_exe_EXTERNAL_OBJECTS =

bin/ngt/ngt: bin/ngt/CMakeFiles/ngt_exe.dir/ngt.cpp.o
bin/ngt/ngt: bin/ngt/CMakeFiles/ngt_exe.dir/build.make
bin/ngt/ngt: lib/NGT/libngt.so.1.12.2
bin/ngt/ngt: bin/ngt/CMakeFiles/ngt_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jakub/NGT-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ngt"
	cd /home/jakub/NGT-master/build/bin/ngt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngt_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/ngt/CMakeFiles/ngt_exe.dir/build: bin/ngt/ngt

.PHONY : bin/ngt/CMakeFiles/ngt_exe.dir/build

bin/ngt/CMakeFiles/ngt_exe.dir/clean:
	cd /home/jakub/NGT-master/build/bin/ngt && $(CMAKE_COMMAND) -P CMakeFiles/ngt_exe.dir/cmake_clean.cmake
.PHONY : bin/ngt/CMakeFiles/ngt_exe.dir/clean

bin/ngt/CMakeFiles/ngt_exe.dir/depend:
	cd /home/jakub/NGT-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jakub/NGT-master /home/jakub/NGT-master/bin/ngt /home/jakub/NGT-master/build /home/jakub/NGT-master/build/bin/ngt /home/jakub/NGT-master/build/bin/ngt/CMakeFiles/ngt_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/ngt/CMakeFiles/ngt_exe.dir/depend

