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

# Include any dependencies generated for this target.
include src/tools/CMakeFiles/g_dyecoupl.dir/depend.make

# Include the progress variables for this target.
include src/tools/CMakeFiles/g_dyecoupl.dir/progress.make

# Include the compile flags for this target's objects.
include src/tools/CMakeFiles/g_dyecoupl.dir/flags.make

src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o: src/tools/CMakeFiles/g_dyecoupl.dir/flags.make
src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o: ../src/tools/g_dyecoupl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o   -c /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/tools/g_dyecoupl.c

src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.i"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/tools/g_dyecoupl.c > CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.i

src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.s"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/tools/g_dyecoupl.c -o CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.s

# Object files for target g_dyecoupl
g_dyecoupl_OBJECTS = \
"CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o"

# External object files for target g_dyecoupl
g_dyecoupl_EXTERNAL_OBJECTS =

src/tools/g_dyecoupl: src/tools/CMakeFiles/g_dyecoupl.dir/g_dyecoupl.c.o
src/tools/g_dyecoupl: src/tools/CMakeFiles/g_dyecoupl.dir/build.make
src/tools/g_dyecoupl: src/tools/libgmxana.a
src/tools/g_dyecoupl: src/mdlib/libmd.a
src/tools/g_dyecoupl: src/gmxlib/libgmx.a
src/tools/g_dyecoupl: src/tools/CMakeFiles/g_dyecoupl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable g_dyecoupl"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/g_dyecoupl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tools/CMakeFiles/g_dyecoupl.dir/build: src/tools/g_dyecoupl

.PHONY : src/tools/CMakeFiles/g_dyecoupl.dir/build

src/tools/CMakeFiles/g_dyecoupl.dir/clean:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools && $(CMAKE_COMMAND) -P CMakeFiles/g_dyecoupl.dir/cmake_clean.cmake
.PHONY : src/tools/CMakeFiles/g_dyecoupl.dir/clean

src/tools/CMakeFiles/g_dyecoupl.dir/depend:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/tools /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/tools/CMakeFiles/g_dyecoupl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tools/CMakeFiles/g_dyecoupl.dir/depend

