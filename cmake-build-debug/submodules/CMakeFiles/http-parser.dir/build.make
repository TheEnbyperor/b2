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
include submodules/CMakeFiles/http-parser.dir/depend.make

# Include the progress variables for this target.
include submodules/CMakeFiles/http-parser.dir/progress.make

# Include the compile flags for this target's objects.
include submodules/CMakeFiles/http-parser.dir/flags.make

submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.o: submodules/CMakeFiles/http-parser.dir/flags.make
submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.o: ../submodules/http-parser/http_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.o"
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http-parser.dir/http-parser/http_parser.c.o   -c /home/benjamin/Documents/b2/submodules/http-parser/http_parser.c

submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http-parser.dir/http-parser/http_parser.c.i"
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/benjamin/Documents/b2/submodules/http-parser/http_parser.c > CMakeFiles/http-parser.dir/http-parser/http_parser.c.i

submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http-parser.dir/http-parser/http_parser.c.s"
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/benjamin/Documents/b2/submodules/http-parser/http_parser.c -o CMakeFiles/http-parser.dir/http-parser/http_parser.c.s

# Object files for target http-parser
http__parser_OBJECTS = \
"CMakeFiles/http-parser.dir/http-parser/http_parser.c.o"

# External object files for target http-parser
http__parser_EXTERNAL_OBJECTS =

submodules/libhttp-parser.a: submodules/CMakeFiles/http-parser.dir/http-parser/http_parser.c.o
submodules/libhttp-parser.a: submodules/CMakeFiles/http-parser.dir/build.make
submodules/libhttp-parser.a: submodules/CMakeFiles/http-parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/benjamin/Documents/b2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libhttp-parser.a"
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && $(CMAKE_COMMAND) -P CMakeFiles/http-parser.dir/cmake_clean_target.cmake
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http-parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
submodules/CMakeFiles/http-parser.dir/build: submodules/libhttp-parser.a

.PHONY : submodules/CMakeFiles/http-parser.dir/build

submodules/CMakeFiles/http-parser.dir/clean:
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules && $(CMAKE_COMMAND) -P CMakeFiles/http-parser.dir/cmake_clean.cmake
.PHONY : submodules/CMakeFiles/http-parser.dir/clean

submodules/CMakeFiles/http-parser.dir/depend:
	cd /home/benjamin/Documents/b2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Documents/b2 /home/benjamin/Documents/b2/submodules /home/benjamin/Documents/b2/cmake-build-debug /home/benjamin/Documents/b2/cmake-build-debug/submodules /home/benjamin/Documents/b2/cmake-build-debug/submodules/CMakeFiles/http-parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : submodules/CMakeFiles/http-parser.dir/depend
