# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug

# Include any dependencies generated for this target.
include application/CMakeFiles/drive-test.dir/depend.make

# Include the progress variables for this target.
include application/CMakeFiles/drive-test.dir/progress.make

# Include the compile flags for this target's objects.
include application/CMakeFiles/drive-test.dir/flags.make

application/CMakeFiles/drive-test.dir/drive-test.cpp.o: application/CMakeFiles/drive-test.dir/flags.make
application/CMakeFiles/drive-test.dir/drive-test.cpp.o: ../application/drive-test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object application/CMakeFiles/drive-test.dir/drive-test.cpp.o"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drive-test.dir/drive-test.cpp.o -c /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/drive-test.cpp

application/CMakeFiles/drive-test.dir/drive-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drive-test.dir/drive-test.cpp.i"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/drive-test.cpp > CMakeFiles/drive-test.dir/drive-test.cpp.i

application/CMakeFiles/drive-test.dir/drive-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drive-test.dir/drive-test.cpp.s"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/drive-test.cpp -o CMakeFiles/drive-test.dir/drive-test.cpp.s

# Object files for target drive-test
drive__test_OBJECTS = \
"CMakeFiles/drive-test.dir/drive-test.cpp.o"

# External object files for target drive-test
drive__test_EXTERNAL_OBJECTS =

application/drive-test: application/CMakeFiles/drive-test.dir/drive-test.cpp.o
application/drive-test: application/CMakeFiles/drive-test.dir/build.make
application/drive-test: libev3dev.a
application/drive-test: application/CMakeFiles/drive-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable drive-test"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drive-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
application/CMakeFiles/drive-test.dir/build: application/drive-test

.PHONY : application/CMakeFiles/drive-test.dir/build

application/CMakeFiles/drive-test.dir/clean:
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application && $(CMAKE_COMMAND) -P CMakeFiles/drive-test.dir/cmake_clean.cmake
.PHONY : application/CMakeFiles/drive-test.dir/clean

application/CMakeFiles/drive-test.dir/depend:
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3 /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/cmake-build-debug/application/CMakeFiles/drive-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : application/CMakeFiles/drive-test.dir/depend

