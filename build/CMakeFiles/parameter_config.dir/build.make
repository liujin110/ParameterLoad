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
CMAKE_SOURCE_DIR = /home/nuc/ParameterLoad

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nuc/ParameterLoad/build

# Include any dependencies generated for this target.
include CMakeFiles/parameter_config.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/parameter_config.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/parameter_config.dir/flags.make

CMakeFiles/parameter_config.dir/test.cpp.o: CMakeFiles/parameter_config.dir/flags.make
CMakeFiles/parameter_config.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/ParameterLoad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/parameter_config.dir/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parameter_config.dir/test.cpp.o -c /home/nuc/ParameterLoad/test.cpp

CMakeFiles/parameter_config.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parameter_config.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/ParameterLoad/test.cpp > CMakeFiles/parameter_config.dir/test.cpp.i

CMakeFiles/parameter_config.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parameter_config.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/ParameterLoad/test.cpp -o CMakeFiles/parameter_config.dir/test.cpp.s

CMakeFiles/parameter_config.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/parameter_config.dir/test.cpp.o.requires

CMakeFiles/parameter_config.dir/test.cpp.o.provides: CMakeFiles/parameter_config.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/parameter_config.dir/build.make CMakeFiles/parameter_config.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/parameter_config.dir/test.cpp.o.provides

CMakeFiles/parameter_config.dir/test.cpp.o.provides.build: CMakeFiles/parameter_config.dir/test.cpp.o


CMakeFiles/parameter_config.dir/parameter_config.cpp.o: CMakeFiles/parameter_config.dir/flags.make
CMakeFiles/parameter_config.dir/parameter_config.cpp.o: ../parameter_config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nuc/ParameterLoad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/parameter_config.dir/parameter_config.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parameter_config.dir/parameter_config.cpp.o -c /home/nuc/ParameterLoad/parameter_config.cpp

CMakeFiles/parameter_config.dir/parameter_config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parameter_config.dir/parameter_config.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nuc/ParameterLoad/parameter_config.cpp > CMakeFiles/parameter_config.dir/parameter_config.cpp.i

CMakeFiles/parameter_config.dir/parameter_config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parameter_config.dir/parameter_config.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nuc/ParameterLoad/parameter_config.cpp -o CMakeFiles/parameter_config.dir/parameter_config.cpp.s

CMakeFiles/parameter_config.dir/parameter_config.cpp.o.requires:

.PHONY : CMakeFiles/parameter_config.dir/parameter_config.cpp.o.requires

CMakeFiles/parameter_config.dir/parameter_config.cpp.o.provides: CMakeFiles/parameter_config.dir/parameter_config.cpp.o.requires
	$(MAKE) -f CMakeFiles/parameter_config.dir/build.make CMakeFiles/parameter_config.dir/parameter_config.cpp.o.provides.build
.PHONY : CMakeFiles/parameter_config.dir/parameter_config.cpp.o.provides

CMakeFiles/parameter_config.dir/parameter_config.cpp.o.provides.build: CMakeFiles/parameter_config.dir/parameter_config.cpp.o


# Object files for target parameter_config
parameter_config_OBJECTS = \
"CMakeFiles/parameter_config.dir/test.cpp.o" \
"CMakeFiles/parameter_config.dir/parameter_config.cpp.o"

# External object files for target parameter_config
parameter_config_EXTERNAL_OBJECTS =

parameter_config: CMakeFiles/parameter_config.dir/test.cpp.o
parameter_config: CMakeFiles/parameter_config.dir/parameter_config.cpp.o
parameter_config: CMakeFiles/parameter_config.dir/build.make
parameter_config: /usr/local/lib/libyaml-cpp.a
parameter_config: CMakeFiles/parameter_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nuc/ParameterLoad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable parameter_config"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parameter_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/parameter_config.dir/build: parameter_config

.PHONY : CMakeFiles/parameter_config.dir/build

CMakeFiles/parameter_config.dir/requires: CMakeFiles/parameter_config.dir/test.cpp.o.requires
CMakeFiles/parameter_config.dir/requires: CMakeFiles/parameter_config.dir/parameter_config.cpp.o.requires

.PHONY : CMakeFiles/parameter_config.dir/requires

CMakeFiles/parameter_config.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/parameter_config.dir/cmake_clean.cmake
.PHONY : CMakeFiles/parameter_config.dir/clean

CMakeFiles/parameter_config.dir/depend:
	cd /home/nuc/ParameterLoad/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nuc/ParameterLoad /home/nuc/ParameterLoad /home/nuc/ParameterLoad/build /home/nuc/ParameterLoad/build /home/nuc/ParameterLoad/build/CMakeFiles/parameter_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/parameter_config.dir/depend
