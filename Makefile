# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/opt/homebrew/Cellar/cmake/3.21.4/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/opt/homebrew/Cellar/cmake/3.21.4/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles /Users/zaduk/Documents/Scripts/C++/ECE244/lab4//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zaduk/Documents/Scripts/C++/ECE244/lab4/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named lab4

# Build rule for target.
lab4: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lab4
.PHONY : lab4

# fast build rule for target.
lab4/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/build
.PHONY : lab4/fast

GroupList.o: GroupList.cpp.o
.PHONY : GroupList.o

# target to build an object file
GroupList.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupList.cpp.o
.PHONY : GroupList.cpp.o

GroupList.i: GroupList.cpp.i
.PHONY : GroupList.i

# target to preprocess a source file
GroupList.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupList.cpp.i
.PHONY : GroupList.cpp.i

GroupList.s: GroupList.cpp.s
.PHONY : GroupList.s

# target to generate assembly for a file
GroupList.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupList.cpp.s
.PHONY : GroupList.cpp.s

GroupNode.o: GroupNode.cpp.o
.PHONY : GroupNode.o

# target to build an object file
GroupNode.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupNode.cpp.o
.PHONY : GroupNode.cpp.o

GroupNode.i: GroupNode.cpp.i
.PHONY : GroupNode.i

# target to preprocess a source file
GroupNode.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupNode.cpp.i
.PHONY : GroupNode.cpp.i

GroupNode.s: GroupNode.cpp.s
.PHONY : GroupNode.s

# target to generate assembly for a file
GroupNode.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/GroupNode.cpp.s
.PHONY : GroupNode.cpp.s

Parser.o: Parser.cpp.o
.PHONY : Parser.o

# target to build an object file
Parser.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Parser.cpp.o
.PHONY : Parser.cpp.o

Parser.i: Parser.cpp.i
.PHONY : Parser.i

# target to preprocess a source file
Parser.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Parser.cpp.i
.PHONY : Parser.cpp.i

Parser.s: Parser.cpp.s
.PHONY : Parser.s

# target to generate assembly for a file
Parser.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Parser.cpp.s
.PHONY : Parser.cpp.s

Shape.o: Shape.cpp.o
.PHONY : Shape.o

# target to build an object file
Shape.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Shape.cpp.o
.PHONY : Shape.cpp.o

Shape.i: Shape.cpp.i
.PHONY : Shape.i

# target to preprocess a source file
Shape.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Shape.cpp.i
.PHONY : Shape.cpp.i

Shape.s: Shape.cpp.s
.PHONY : Shape.s

# target to generate assembly for a file
Shape.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/Shape.cpp.s
.PHONY : Shape.cpp.s

ShapeList.o: ShapeList.cpp.o
.PHONY : ShapeList.o

# target to build an object file
ShapeList.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeList.cpp.o
.PHONY : ShapeList.cpp.o

ShapeList.i: ShapeList.cpp.i
.PHONY : ShapeList.i

# target to preprocess a source file
ShapeList.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeList.cpp.i
.PHONY : ShapeList.cpp.i

ShapeList.s: ShapeList.cpp.s
.PHONY : ShapeList.s

# target to generate assembly for a file
ShapeList.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeList.cpp.s
.PHONY : ShapeList.cpp.s

ShapeNode.o: ShapeNode.cpp.o
.PHONY : ShapeNode.o

# target to build an object file
ShapeNode.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeNode.cpp.o
.PHONY : ShapeNode.cpp.o

ShapeNode.i: ShapeNode.cpp.i
.PHONY : ShapeNode.i

# target to preprocess a source file
ShapeNode.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeNode.cpp.i
.PHONY : ShapeNode.cpp.i

ShapeNode.s: ShapeNode.cpp.s
.PHONY : ShapeNode.s

# target to generate assembly for a file
ShapeNode.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/ShapeNode.cpp.s
.PHONY : ShapeNode.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... lab4"
	@echo "... GroupList.o"
	@echo "... GroupList.i"
	@echo "... GroupList.s"
	@echo "... GroupNode.o"
	@echo "... GroupNode.i"
	@echo "... GroupNode.s"
	@echo "... Parser.o"
	@echo "... Parser.i"
	@echo "... Parser.s"
	@echo "... Shape.o"
	@echo "... Shape.i"
	@echo "... Shape.s"
	@echo "... ShapeList.o"
	@echo "... ShapeList.i"
	@echo "... ShapeList.s"
	@echo "... ShapeNode.o"
	@echo "... ShapeNode.i"
	@echo "... ShapeNode.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

