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
CMAKE_SOURCE_DIR = /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild

# Utility rule file for curl-populate.

# Include the progress variables for this target.
include CMakeFiles/curl-populate.dir/progress.make

CMakeFiles/curl-populate: CMakeFiles/curl-populate-complete


CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-install
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-mkdir
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-download
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-update
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-patch
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-build
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-install
CMakeFiles/curl-populate-complete: curl-populate-prefix/src/curl-populate-stamp/curl-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'curl-populate'"
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles/curl-populate-complete
	/usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-done

curl-populate-prefix/src/curl-populate-stamp/curl-populate-install: curl-populate-prefix/src/curl-populate-stamp/curl-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-install

curl-populate-prefix/src/curl-populate-stamp/curl-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'curl-populate'"
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-src
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src
	/usr/bin/cmake -E make_directory /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp
	/usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-mkdir

curl-populate-prefix/src/curl-populate-stamp/curl-populate-download: curl-populate-prefix/src/curl-populate-stamp/curl-populate-gitinfo.txt
curl-populate-prefix/src/curl-populate-stamp/curl-populate-download: curl-populate-prefix/src/curl-populate-stamp/curl-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps && /usr/bin/cmake -P /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/tmp/curl-populate-gitclone.cmake
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps && /usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-download

curl-populate-prefix/src/curl-populate-stamp/curl-populate-update: curl-populate-prefix/src/curl-populate-stamp/curl-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-src && /usr/bin/cmake -P /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/tmp/curl-populate-gitupdate.cmake

curl-populate-prefix/src/curl-populate-stamp/curl-populate-patch: curl-populate-prefix/src/curl-populate-stamp/curl-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'curl-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-patch

curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure: curl-populate-prefix/tmp/curl-populate-cfgcmd.txt
curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure: curl-populate-prefix/src/curl-populate-stamp/curl-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure

curl-populate-prefix/src/curl-populate-stamp/curl-populate-build: curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-build

curl-populate-prefix/src/curl-populate-stamp/curl-populate-test: curl-populate-prefix/src/curl-populate-stamp/curl-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'curl-populate'"
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-build && /usr/bin/cmake -E touch /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/curl-populate-prefix/src/curl-populate-stamp/curl-populate-test

curl-populate: CMakeFiles/curl-populate
curl-populate: CMakeFiles/curl-populate-complete
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-install
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-mkdir
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-download
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-update
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-patch
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-configure
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-build
curl-populate: curl-populate-prefix/src/curl-populate-stamp/curl-populate-test
curl-populate: CMakeFiles/curl-populate.dir/build.make

.PHONY : curl-populate

# Rule to build all files generated by this target.
CMakeFiles/curl-populate.dir/build: curl-populate

.PHONY : CMakeFiles/curl-populate.dir/build

CMakeFiles/curl-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/curl-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/curl-populate.dir/clean

CMakeFiles/curl-populate.dir/depend:
	cd /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild /mnt/c/Users/moham/Documents/GIT-Projects/HvA/EV3/application/auto-downloader/cmake-build-debug/_deps/curl-subbuild/CMakeFiles/curl-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/curl-populate.dir/depend

