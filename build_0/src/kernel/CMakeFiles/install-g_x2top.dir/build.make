# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0

# Utility rule file for install-g_x2top.

# Include the progress variables for this target.
include src/kernel/CMakeFiles/install-g_x2top.dir/progress.make

src/kernel/CMakeFiles/install-g_x2top:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Installing g_x2top"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /usr/local/Cellar/cmake/3.14.1/bin/cmake -DCOMPONENT=g_x2top -P /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/cmake_install.cmake

install-g_x2top: src/kernel/CMakeFiles/install-g_x2top
install-g_x2top: src/kernel/CMakeFiles/install-g_x2top.dir/build.make

.PHONY : install-g_x2top

# Rule to build all files generated by this target.
src/kernel/CMakeFiles/install-g_x2top.dir/build: install-g_x2top

.PHONY : src/kernel/CMakeFiles/install-g_x2top.dir/build

src/kernel/CMakeFiles/install-g_x2top.dir/clean:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && $(CMAKE_COMMAND) -P CMakeFiles/install-g_x2top.dir/cmake_clean.cmake
.PHONY : src/kernel/CMakeFiles/install-g_x2top.dir/clean

src/kernel/CMakeFiles/install-g_x2top.dir/depend:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel/CMakeFiles/install-g_x2top.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/kernel/CMakeFiles/install-g_x2top.dir/depend

