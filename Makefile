# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/harrismaung/Desktop/CS3241R/Lab/Lab3_todo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/harrismaung/desktop/CS3241R/Lab/Lab3_todo

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CMake.app/Contents/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/Applications/CMake.app/Contents/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all:
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/harrismaung/desktop/CS3241R/Lab/Lab3_todo/CMakeFiles /Users/harrismaung/desktop/CS3241R/Lab/Lab3_todo//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/harrismaung/desktop/CS3241R/Lab/Lab3_todo/CMakeFiles 0
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

#=============================================================================
# Target rules for targets named Lab3

# Build rule for target.
Lab3:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Lab3
.PHONY : Lab3

# fast build rule for target.
Lab3/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/build
.PHONY : Lab3/fast

image_io.o: image_io.cpp.o

.PHONY : image_io.o

# target to build an object file
image_io.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/image_io.cpp.o
.PHONY : image_io.cpp.o

image_io.i: image_io.cpp.i

.PHONY : image_io.i

# target to preprocess a source file
image_io.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/image_io.cpp.i
.PHONY : image_io.cpp.i

image_io.s: image_io.cpp.s

.PHONY : image_io.s

# target to generate assembly for a file
image_io.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/image_io.cpp.s
.PHONY : image_io.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Lab3.dir/build.make CMakeFiles/Lab3.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... Lab3"
	@echo "... image_io.o"
	@echo "... image_io.i"
	@echo "... image_io.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

