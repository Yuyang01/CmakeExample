# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build

# Include any dependencies generated for this target.
include CMakeFiles/EigenSolver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/EigenSolver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/EigenSolver.dir/flags.make

CMakeFiles/EigenSolver.dir/src/main.cpp.o: CMakeFiles/EigenSolver.dir/flags.make
CMakeFiles/EigenSolver.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/EigenSolver.dir/src/main.cpp.o"
	/usr/local/bin/clang-omp++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EigenSolver.dir/src/main.cpp.o -c /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/src/main.cpp

CMakeFiles/EigenSolver.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EigenSolver.dir/src/main.cpp.i"
	/usr/local/bin/clang-omp++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/src/main.cpp > CMakeFiles/EigenSolver.dir/src/main.cpp.i

CMakeFiles/EigenSolver.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EigenSolver.dir/src/main.cpp.s"
	/usr/local/bin/clang-omp++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/src/main.cpp -o CMakeFiles/EigenSolver.dir/src/main.cpp.s

# Object files for target EigenSolver
EigenSolver_OBJECTS = \
"CMakeFiles/EigenSolver.dir/src/main.cpp.o"

# External object files for target EigenSolver
EigenSolver_EXTERNAL_OBJECTS =

EigenSolver: CMakeFiles/EigenSolver.dir/src/main.cpp.o
EigenSolver: CMakeFiles/EigenSolver.dir/build.make
EigenSolver: CMakeFiles/EigenSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable EigenSolver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EigenSolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/EigenSolver.dir/build: EigenSolver

.PHONY : CMakeFiles/EigenSolver.dir/build

CMakeFiles/EigenSolver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/EigenSolver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/EigenSolver.dir/clean

CMakeFiles/EigenSolver.dir/depend:
	cd /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build /Users/Yuyang/Documents/programing/cmake_demo/eigen_example/example2-solverEigen/build/CMakeFiles/EigenSolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/EigenSolver.dir/depend

