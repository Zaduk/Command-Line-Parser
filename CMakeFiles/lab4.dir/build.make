# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.21.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.21.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zaduk/Documents/Scripts/C++/ECE244/lab4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zaduk/Documents/Scripts/C++/ECE244/lab4

# Include any dependencies generated for this target.
include CMakeFiles/lab4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab4.dir/flags.make

CMakeFiles/lab4.dir/Shape.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/Shape.cpp.o: Shape.cpp
CMakeFiles/lab4.dir/Shape.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab4.dir/Shape.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/Shape.cpp.o -MF CMakeFiles/lab4.dir/Shape.cpp.o.d -o CMakeFiles/lab4.dir/Shape.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Shape.cpp

CMakeFiles/lab4.dir/Shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/Shape.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Shape.cpp > CMakeFiles/lab4.dir/Shape.cpp.i

CMakeFiles/lab4.dir/Shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/Shape.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Shape.cpp -o CMakeFiles/lab4.dir/Shape.cpp.s

CMakeFiles/lab4.dir/ShapeList.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/ShapeList.cpp.o: ShapeList.cpp
CMakeFiles/lab4.dir/ShapeList.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab4.dir/ShapeList.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/ShapeList.cpp.o -MF CMakeFiles/lab4.dir/ShapeList.cpp.o.d -o CMakeFiles/lab4.dir/ShapeList.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeList.cpp

CMakeFiles/lab4.dir/ShapeList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/ShapeList.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeList.cpp > CMakeFiles/lab4.dir/ShapeList.cpp.i

CMakeFiles/lab4.dir/ShapeList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/ShapeList.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeList.cpp -o CMakeFiles/lab4.dir/ShapeList.cpp.s

CMakeFiles/lab4.dir/ShapeNode.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/ShapeNode.cpp.o: ShapeNode.cpp
CMakeFiles/lab4.dir/ShapeNode.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab4.dir/ShapeNode.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/ShapeNode.cpp.o -MF CMakeFiles/lab4.dir/ShapeNode.cpp.o.d -o CMakeFiles/lab4.dir/ShapeNode.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeNode.cpp

CMakeFiles/lab4.dir/ShapeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/ShapeNode.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeNode.cpp > CMakeFiles/lab4.dir/ShapeNode.cpp.i

CMakeFiles/lab4.dir/ShapeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/ShapeNode.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/ShapeNode.cpp -o CMakeFiles/lab4.dir/ShapeNode.cpp.s

CMakeFiles/lab4.dir/GroupList.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/GroupList.cpp.o: GroupList.cpp
CMakeFiles/lab4.dir/GroupList.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lab4.dir/GroupList.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/GroupList.cpp.o -MF CMakeFiles/lab4.dir/GroupList.cpp.o.d -o CMakeFiles/lab4.dir/GroupList.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupList.cpp

CMakeFiles/lab4.dir/GroupList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/GroupList.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupList.cpp > CMakeFiles/lab4.dir/GroupList.cpp.i

CMakeFiles/lab4.dir/GroupList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/GroupList.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupList.cpp -o CMakeFiles/lab4.dir/GroupList.cpp.s

CMakeFiles/lab4.dir/GroupNode.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/GroupNode.cpp.o: GroupNode.cpp
CMakeFiles/lab4.dir/GroupNode.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/lab4.dir/GroupNode.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/GroupNode.cpp.o -MF CMakeFiles/lab4.dir/GroupNode.cpp.o.d -o CMakeFiles/lab4.dir/GroupNode.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupNode.cpp

CMakeFiles/lab4.dir/GroupNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/GroupNode.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupNode.cpp > CMakeFiles/lab4.dir/GroupNode.cpp.i

CMakeFiles/lab4.dir/GroupNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/GroupNode.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/GroupNode.cpp -o CMakeFiles/lab4.dir/GroupNode.cpp.s

CMakeFiles/lab4.dir/Parser.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/Parser.cpp.o: Parser.cpp
CMakeFiles/lab4.dir/Parser.cpp.o: CMakeFiles/lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/lab4.dir/Parser.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab4.dir/Parser.cpp.o -MF CMakeFiles/lab4.dir/Parser.cpp.o.d -o CMakeFiles/lab4.dir/Parser.cpp.o -c /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Parser.cpp

CMakeFiles/lab4.dir/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/Parser.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Parser.cpp > CMakeFiles/lab4.dir/Parser.cpp.i

CMakeFiles/lab4.dir/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/Parser.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/Parser.cpp -o CMakeFiles/lab4.dir/Parser.cpp.s

# Object files for target lab4
lab4_OBJECTS = \
"CMakeFiles/lab4.dir/Shape.cpp.o" \
"CMakeFiles/lab4.dir/ShapeList.cpp.o" \
"CMakeFiles/lab4.dir/ShapeNode.cpp.o" \
"CMakeFiles/lab4.dir/GroupList.cpp.o" \
"CMakeFiles/lab4.dir/GroupNode.cpp.o" \
"CMakeFiles/lab4.dir/Parser.cpp.o"

# External object files for target lab4
lab4_EXTERNAL_OBJECTS =

lab4: CMakeFiles/lab4.dir/Shape.cpp.o
lab4: CMakeFiles/lab4.dir/ShapeList.cpp.o
lab4: CMakeFiles/lab4.dir/ShapeNode.cpp.o
lab4: CMakeFiles/lab4.dir/GroupList.cpp.o
lab4: CMakeFiles/lab4.dir/GroupNode.cpp.o
lab4: CMakeFiles/lab4.dir/Parser.cpp.o
lab4: CMakeFiles/lab4.dir/build.make
lab4: CMakeFiles/lab4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable lab4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab4.dir/build: lab4
.PHONY : CMakeFiles/lab4.dir/build

CMakeFiles/lab4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab4.dir/clean

CMakeFiles/lab4.dir/depend:
	cd /Users/zaduk/Documents/Scripts/C++/ECE244/lab4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zaduk/Documents/Scripts/C++/ECE244/lab4 /Users/zaduk/Documents/Scripts/C++/ECE244/lab4 /Users/zaduk/Documents/Scripts/C++/ECE244/lab4 /Users/zaduk/Documents/Scripts/C++/ECE244/lab4 /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles/lab4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab4.dir/depend

