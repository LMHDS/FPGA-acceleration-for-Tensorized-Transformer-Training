# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/minghe/gemm_hls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/minghe/gemm_hls/build

# Utility rule file for MatrixMultiplication.

# Include any custom commands dependencies for this target.
include CMakeFiles/MatrixMultiplication.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MatrixMultiplication.dir/progress.make

CMakeFiles/MatrixMultiplication: ../kernel/Compute.cpp
CMakeFiles/MatrixMultiplication: ../kernel/Memory.cpp
CMakeFiles/MatrixMultiplication: ../kernel/Top.cpp
CMakeFiles/MatrixMultiplication: ../include/Compute.h
CMakeFiles/MatrixMultiplication: ../include/MatrixMultiplication.h
CMakeFiles/MatrixMultiplication: ../include/Memory.h
CMakeFiles/MatrixMultiplication: Config.h

MatrixMultiplication: CMakeFiles/MatrixMultiplication
MatrixMultiplication: CMakeFiles/MatrixMultiplication.dir/build.make
.PHONY : MatrixMultiplication

# Rule to build all files generated by this target.
CMakeFiles/MatrixMultiplication.dir/build: MatrixMultiplication
.PHONY : CMakeFiles/MatrixMultiplication.dir/build

CMakeFiles/MatrixMultiplication.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MatrixMultiplication.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MatrixMultiplication.dir/clean

CMakeFiles/MatrixMultiplication.dir/depend:
	cd /home/minghe/gemm_hls/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/minghe/gemm_hls /home/minghe/gemm_hls /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build/CMakeFiles/MatrixMultiplication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MatrixMultiplication.dir/depend
