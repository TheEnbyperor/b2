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
include src/6502/t/CMakeFiles/visual6502.dir/depend.make

# Include the progress variables for this target.
include src/6502/t/CMakeFiles/visual6502.dir/progress.make

# Include the compile flags for this target's objects.
include src/6502/t/CMakeFiles/visual6502.dir/flags.make

src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.o: src/6502/t/CMakeFiles/visual6502.dir/flags.make
src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.o: ../src/6502/t/visual6502.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.o"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/visual6502.dir/visual6502.cpp.o -c /home/benjamin/Documents/b2/src/6502/t/visual6502.cpp

src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/visual6502.dir/visual6502.cpp.i"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/benjamin/Documents/b2/src/6502/t/visual6502.cpp > CMakeFiles/visual6502.dir/visual6502.cpp.i

src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/visual6502.dir/visual6502.cpp.s"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/benjamin/Documents/b2/src/6502/t/visual6502.cpp -o CMakeFiles/visual6502.dir/visual6502.cpp.s

src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.o: src/6502/t/CMakeFiles/visual6502.dir/flags.make
src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.o: ../src/6502/t/perfect6502.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.o"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/visual6502.dir/perfect6502.c.o   -c /home/benjamin/Documents/b2/src/6502/t/perfect6502.c

src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/visual6502.dir/perfect6502.c.i"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/benjamin/Documents/b2/src/6502/t/perfect6502.c > CMakeFiles/visual6502.dir/perfect6502.c.i

src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/visual6502.dir/perfect6502.c.s"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/benjamin/Documents/b2/src/6502/t/perfect6502.c -o CMakeFiles/visual6502.dir/perfect6502.c.s

# Object files for target visual6502
visual6502_OBJECTS = \
"CMakeFiles/visual6502.dir/visual6502.cpp.o" \
"CMakeFiles/visual6502.dir/perfect6502.c.o"

# External object files for target visual6502
visual6502_EXTERNAL_OBJECTS =

src/6502/t/visual6502: src/6502/t/CMakeFiles/visual6502.dir/visual6502.cpp.o
src/6502/t/visual6502: src/6502/t/CMakeFiles/visual6502.dir/perfect6502.c.o
src/6502/t/visual6502: src/6502/t/CMakeFiles/visual6502.dir/build.make
src/6502/t/visual6502: src/shared/libshared_lib.a
src/6502/t/visual6502: src/6502/lib6502_lib.a
src/6502/t/visual6502: src/6502/t/CMakeFiles/visual6502.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable visual6502"
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/visual6502.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/6502/t/CMakeFiles/visual6502.dir/build: src/6502/t/visual6502

.PHONY : src/6502/t/CMakeFiles/visual6502.dir/build

src/6502/t/CMakeFiles/visual6502.dir/clean:
	cd /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t && $(CMAKE_COMMAND) -P CMakeFiles/visual6502.dir/cmake_clean.cmake
.PHONY : src/6502/t/CMakeFiles/visual6502.dir/clean

src/6502/t/CMakeFiles/visual6502.dir/depend:
	cd /home/benjamin/Documents/b2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Documents/b2 /home/benjamin/Documents/b2/src/6502/t /home/benjamin/Documents/b2/cmake-build-debug /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t /home/benjamin/Documents/b2/cmake-build-debug/src/6502/t/CMakeFiles/visual6502.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/6502/t/CMakeFiles/visual6502.dir/depend
