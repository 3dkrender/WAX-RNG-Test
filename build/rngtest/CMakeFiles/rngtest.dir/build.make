# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /wax/rngtest/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /wax/rngtest/build/rngtest

# Include any dependencies generated for this target.
include CMakeFiles/rngtest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rngtest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rngtest.dir/flags.make

CMakeFiles/rngtest.dir/rngtest.obj: CMakeFiles/rngtest.dir/flags.make
CMakeFiles/rngtest.dir/rngtest.obj: /wax/rngtest/src/rngtest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/wax/rngtest/build/rngtest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rngtest.dir/rngtest.obj"
	/usr/local/eosio.cdt/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rngtest.dir/rngtest.obj -c /wax/rngtest/src/rngtest.cpp

CMakeFiles/rngtest.dir/rngtest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rngtest.dir/rngtest.i"
	/usr/local/eosio.cdt/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /wax/rngtest/src/rngtest.cpp > CMakeFiles/rngtest.dir/rngtest.i

CMakeFiles/rngtest.dir/rngtest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rngtest.dir/rngtest.s"
	/usr/local/eosio.cdt/bin/eosio-cpp $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /wax/rngtest/src/rngtest.cpp -o CMakeFiles/rngtest.dir/rngtest.s

CMakeFiles/rngtest.dir/rngtest.obj.requires:

.PHONY : CMakeFiles/rngtest.dir/rngtest.obj.requires

CMakeFiles/rngtest.dir/rngtest.obj.provides: CMakeFiles/rngtest.dir/rngtest.obj.requires
	$(MAKE) -f CMakeFiles/rngtest.dir/build.make CMakeFiles/rngtest.dir/rngtest.obj.provides.build
.PHONY : CMakeFiles/rngtest.dir/rngtest.obj.provides

CMakeFiles/rngtest.dir/rngtest.obj.provides.build: CMakeFiles/rngtest.dir/rngtest.obj


# Object files for target rngtest
rngtest_OBJECTS = \
"CMakeFiles/rngtest.dir/rngtest.obj"

# External object files for target rngtest
rngtest_EXTERNAL_OBJECTS =

rngtest.wasm: CMakeFiles/rngtest.dir/rngtest.obj
rngtest.wasm: CMakeFiles/rngtest.dir/build.make
rngtest.wasm: CMakeFiles/rngtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/wax/rngtest/build/rngtest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rngtest.wasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rngtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rngtest.dir/build: rngtest.wasm

.PHONY : CMakeFiles/rngtest.dir/build

CMakeFiles/rngtest.dir/requires: CMakeFiles/rngtest.dir/rngtest.obj.requires

.PHONY : CMakeFiles/rngtest.dir/requires

CMakeFiles/rngtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rngtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rngtest.dir/clean

CMakeFiles/rngtest.dir/depend:
	cd /wax/rngtest/build/rngtest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /wax/rngtest/src /wax/rngtest/src /wax/rngtest/build/rngtest /wax/rngtest/build/rngtest /wax/rngtest/build/rngtest/CMakeFiles/rngtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rngtest.dir/depend
