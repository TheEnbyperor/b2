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
CMAKE_COMMAND = /media/data/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /media/data/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benjamin/Documents/b2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benjamin/Documents/b2/cmake-build-debug

# Include any dependencies generated for this target.
include src/shared/t/CMakeFiles/test_path.dir/depend.make

# Include the progress variables for this target.
include src/shared/t/CMakeFiles/test_path.dir/progress.make

# Include the compile flags for this target's objects.
include src/shared/t/CMakeFiles/test_path.dir/flags.make

src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.o: src/shared/t/CMakeFiles/test_path.dir/flags.make
src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.o: ../src/shared/t/test_path.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.o"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_path.dir/test_path.cpp.o -c /home/benjamin/Documents/b2/src/shared/t/test_path.cpp

src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_path.dir/test_path.cpp.i"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/Documents/b2/src/shared/t/test_path.cpp > CMakeFiles/test_path.dir/test_path.cpp.i

src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_path.dir/test_path.cpp.s"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/Documents/b2/src/shared/t/test_path.cpp -o CMakeFiles/test_path.dir/test_path.cpp.s

# Object files for target test_path
test_path_OBJECTS = \
"CMakeFiles/test_path.dir/test_path.cpp.o"

# External object files for target test_path
test_path_EXTERNAL_OBJECTS =

src/shared/t/test_path: src/shared/t/CMakeFiles/test_path.dir/test_path.cpp.o
src/shared/t/test_path: src/shared/t/CMakeFiles/test_path.dir/build.make
src/shared/t/test_path: src/shared/libshared_lib.a
src/shared/t/test_path: src/shared/t/CMakeFiles/test_path.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_path"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_path.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/shared/t/CMakeFiles/test_path.dir/build: src/shared/t/test_path

.PHONY : src/shared/t/CMakeFiles/test_path.dir/build

src/shared/t/CMakeFiles/test_path.dir/clean:
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t && $(CMAKE_COMMAND) -P CMakeFiles/test_path.dir/cmake_clean.cmake
.PHONY : src/shared/t/CMakeFiles/test_path.dir/clean

src/shared/t/CMakeFiles/test_path.dir/depend:
	cd /home/benjamin/Documents/b2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Documents/b2 /home/benjamin/Documents/b2/src/shared/t /home/benjamin/Documents/b2/cmake-build-debug /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t /home/benjamin/Documents/b2/cmake-build-debug/src/shared/t/CMakeFiles/test_path.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/shared/t/CMakeFiles/test_path.dir/depend
