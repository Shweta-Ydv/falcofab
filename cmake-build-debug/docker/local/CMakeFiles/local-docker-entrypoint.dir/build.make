# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nova/falco/falco

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nova/falco/falco/cmake-build-debug

# Utility rule file for local-docker-entrypoint.

# Include the progress variables for this target.
include docker/local/CMakeFiles/local-docker-entrypoint.dir/progress.make

docker/local/CMakeFiles/local-docker-entrypoint: docker/local/docker-entrypoint


docker/local/docker-entrypoint: ../docker/local/docker-entrypoint.sh
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nova/falco/falco/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating docker-entrypoint"
	cd /home/nova/falco/falco/cmake-build-debug/docker/local && /usr/bin/cmake -E copy /home/nova/falco/falco/docker/local/docker-entrypoint.sh /home/nova/falco/falco/cmake-build-debug/docker/local/docker-entrypoint.sh

local-docker-entrypoint: docker/local/CMakeFiles/local-docker-entrypoint
local-docker-entrypoint: docker/local/docker-entrypoint
local-docker-entrypoint: docker/local/CMakeFiles/local-docker-entrypoint.dir/build.make

.PHONY : local-docker-entrypoint

# Rule to build all files generated by this target.
docker/local/CMakeFiles/local-docker-entrypoint.dir/build: local-docker-entrypoint

.PHONY : docker/local/CMakeFiles/local-docker-entrypoint.dir/build

docker/local/CMakeFiles/local-docker-entrypoint.dir/clean:
	cd /home/nova/falco/falco/cmake-build-debug/docker/local && $(CMAKE_COMMAND) -P CMakeFiles/local-docker-entrypoint.dir/cmake_clean.cmake
.PHONY : docker/local/CMakeFiles/local-docker-entrypoint.dir/clean

docker/local/CMakeFiles/local-docker-entrypoint.dir/depend:
	cd /home/nova/falco/falco/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nova/falco/falco /home/nova/falco/falco/docker/local /home/nova/falco/falco/cmake-build-debug /home/nova/falco/falco/cmake-build-debug/docker/local /home/nova/falco/falco/cmake-build-debug/docker/local/CMakeFiles/local-docker-entrypoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docker/local/CMakeFiles/local-docker-entrypoint.dir/depend
