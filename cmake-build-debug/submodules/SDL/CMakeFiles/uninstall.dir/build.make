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

# Utility rule file for uninstall.

# Include the progress variables for this target.
include submodules/SDL/CMakeFiles/uninstall.dir/progress.make

submodules/SDL/CMakeFiles/uninstall:
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules/SDL && /media/data/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake -P /home/benjamin/Documents/b2/cmake-build-debug/submodules/SDL/cmake_uninstall.cmake

uninstall: submodules/SDL/CMakeFiles/uninstall
uninstall: submodules/SDL/CMakeFiles/uninstall.dir/build.make

.PHONY : uninstall

# Rule to build all files generated by this target.
submodules/SDL/CMakeFiles/uninstall.dir/build: uninstall

.PHONY : submodules/SDL/CMakeFiles/uninstall.dir/build

submodules/SDL/CMakeFiles/uninstall.dir/clean:
	cd /home/benjamin/Documents/b2/cmake-build-debug/submodules/SDL && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : submodules/SDL/CMakeFiles/uninstall.dir/clean

submodules/SDL/CMakeFiles/uninstall.dir/depend:
	cd /home/benjamin/Documents/b2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benjamin/Documents/b2 /home/benjamin/Documents/b2/submodules/SDL /home/benjamin/Documents/b2/cmake-build-debug /home/benjamin/Documents/b2/cmake-build-debug/submodules/SDL /home/benjamin/Documents/b2/cmake-build-debug/submodules/SDL/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : submodules/SDL/CMakeFiles/uninstall.dir/depend
