# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/zachary/Documents/HW1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zachary/Documents/HW1

# Include any dependencies generated for this target.
include CMakeFiles/hw1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw1.dir/flags.make

CMakeFiles/hw1.dir/src/vec3d.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/src/vec3d.cpp.o: src/vec3d.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zachary/Documents/HW1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hw1.dir/src/vec3d.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hw1.dir/src/vec3d.cpp.o -c /home/zachary/Documents/HW1/src/vec3d.cpp

CMakeFiles/hw1.dir/src/vec3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/src/vec3d.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zachary/Documents/HW1/src/vec3d.cpp > CMakeFiles/hw1.dir/src/vec3d.cpp.i

CMakeFiles/hw1.dir/src/vec3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/src/vec3d.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zachary/Documents/HW1/src/vec3d.cpp -o CMakeFiles/hw1.dir/src/vec3d.cpp.s

CMakeFiles/hw1.dir/src/vec3d.cpp.o.requires:
.PHONY : CMakeFiles/hw1.dir/src/vec3d.cpp.o.requires

CMakeFiles/hw1.dir/src/vec3d.cpp.o.provides: CMakeFiles/hw1.dir/src/vec3d.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw1.dir/build.make CMakeFiles/hw1.dir/src/vec3d.cpp.o.provides.build
.PHONY : CMakeFiles/hw1.dir/src/vec3d.cpp.o.provides

CMakeFiles/hw1.dir/src/vec3d.cpp.o.provides.build: CMakeFiles/hw1.dir/src/vec3d.cpp.o

CMakeFiles/hw1.dir/bin/hw1.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/bin/hw1.cpp.o: bin/hw1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zachary/Documents/HW1/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hw1.dir/bin/hw1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hw1.dir/bin/hw1.cpp.o -c /home/zachary/Documents/HW1/bin/hw1.cpp

CMakeFiles/hw1.dir/bin/hw1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/bin/hw1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zachary/Documents/HW1/bin/hw1.cpp > CMakeFiles/hw1.dir/bin/hw1.cpp.i

CMakeFiles/hw1.dir/bin/hw1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/bin/hw1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zachary/Documents/HW1/bin/hw1.cpp -o CMakeFiles/hw1.dir/bin/hw1.cpp.s

CMakeFiles/hw1.dir/bin/hw1.cpp.o.requires:
.PHONY : CMakeFiles/hw1.dir/bin/hw1.cpp.o.requires

CMakeFiles/hw1.dir/bin/hw1.cpp.o.provides: CMakeFiles/hw1.dir/bin/hw1.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw1.dir/build.make CMakeFiles/hw1.dir/bin/hw1.cpp.o.provides.build
.PHONY : CMakeFiles/hw1.dir/bin/hw1.cpp.o.provides

CMakeFiles/hw1.dir/bin/hw1.cpp.o.provides.build: CMakeFiles/hw1.dir/bin/hw1.cpp.o

# Object files for target hw1
hw1_OBJECTS = \
"CMakeFiles/hw1.dir/src/vec3d.cpp.o" \
"CMakeFiles/hw1.dir/bin/hw1.cpp.o"

# External object files for target hw1
hw1_EXTERNAL_OBJECTS =

hw1: CMakeFiles/hw1.dir/src/vec3d.cpp.o
hw1: CMakeFiles/hw1.dir/bin/hw1.cpp.o
hw1: CMakeFiles/hw1.dir/build.make
hw1: CMakeFiles/hw1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hw1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw1.dir/build: hw1
.PHONY : CMakeFiles/hw1.dir/build

CMakeFiles/hw1.dir/requires: CMakeFiles/hw1.dir/src/vec3d.cpp.o.requires
CMakeFiles/hw1.dir/requires: CMakeFiles/hw1.dir/bin/hw1.cpp.o.requires
.PHONY : CMakeFiles/hw1.dir/requires

CMakeFiles/hw1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw1.dir/clean

CMakeFiles/hw1.dir/depend:
	cd /home/zachary/Documents/HW1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zachary/Documents/HW1 /home/zachary/Documents/HW1 /home/zachary/Documents/HW1 /home/zachary/Documents/HW1 /home/zachary/Documents/HW1/CMakeFiles/hw1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw1.dir/depend

