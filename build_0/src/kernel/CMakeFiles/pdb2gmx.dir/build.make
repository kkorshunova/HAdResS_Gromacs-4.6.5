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
include src/kernel/CMakeFiles/pdb2gmx.dir/depend.make

# Include the progress variables for this target.
include src/kernel/CMakeFiles/pdb2gmx.dir/progress.make

# Include the compile flags for this target's objects.
include src/kernel/CMakeFiles/pdb2gmx.dir/flags.make

src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o: src/kernel/CMakeFiles/pdb2gmx.dir/flags.make
src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o: ../src/kernel/pdb2gmx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o   -c /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/pdb2gmx.c

src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pdb2gmx.dir/pdb2gmx.c.i"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/pdb2gmx.c > CMakeFiles/pdb2gmx.dir/pdb2gmx.c.i

src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pdb2gmx.dir/pdb2gmx.c.s"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/pdb2gmx.c -o CMakeFiles/pdb2gmx.dir/pdb2gmx.c.s

src/kernel/CMakeFiles/pdb2gmx.dir/main.c.o: src/kernel/CMakeFiles/pdb2gmx.dir/flags.make
src/kernel/CMakeFiles/pdb2gmx.dir/main.c.o: ../src/kernel/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/kernel/CMakeFiles/pdb2gmx.dir/main.c.o"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pdb2gmx.dir/main.c.o   -c /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/main.c

src/kernel/CMakeFiles/pdb2gmx.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pdb2gmx.dir/main.c.i"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/main.c > CMakeFiles/pdb2gmx.dir/main.c.i

src/kernel/CMakeFiles/pdb2gmx.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pdb2gmx.dir/main.c.s"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && /Library/Developer/CommandLineTools/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel/main.c -o CMakeFiles/pdb2gmx.dir/main.c.s

# Object files for target pdb2gmx
pdb2gmx_OBJECTS = \
"CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o" \
"CMakeFiles/pdb2gmx.dir/main.c.o"

# External object files for target pdb2gmx
pdb2gmx_EXTERNAL_OBJECTS =

src/kernel/pdb2gmx: src/kernel/CMakeFiles/pdb2gmx.dir/pdb2gmx.c.o
src/kernel/pdb2gmx: src/kernel/CMakeFiles/pdb2gmx.dir/main.c.o
src/kernel/pdb2gmx: src/kernel/CMakeFiles/pdb2gmx.dir/build.make
src/kernel/pdb2gmx: src/kernel/libgmxpreprocess.a
src/kernel/pdb2gmx: src/mdlib/libmd.a
src/kernel/pdb2gmx: src/gmxlib/libgmx.a
src/kernel/pdb2gmx: src/kernel/CMakeFiles/pdb2gmx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable pdb2gmx"
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pdb2gmx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/kernel/CMakeFiles/pdb2gmx.dir/build: src/kernel/pdb2gmx

.PHONY : src/kernel/CMakeFiles/pdb2gmx.dir/build

src/kernel/CMakeFiles/pdb2gmx.dir/clean:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel && $(CMAKE_COMMAND) -P CMakeFiles/pdb2gmx.dir/cmake_clean.cmake
.PHONY : src/kernel/CMakeFiles/pdb2gmx.dir/clean

src/kernel/CMakeFiles/pdb2gmx.dir/depend:
	cd /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0 /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/kernel/CMakeFiles/pdb2gmx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/kernel/CMakeFiles/pdb2gmx.dir/depend

