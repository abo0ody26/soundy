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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abo0ody/workspace/opencv/portaudio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abo0ody/workspace/opencv/portaudio/build

# Include any dependencies generated for this target.
include CMakeFiles/soundy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/soundy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/soundy.dir/flags.make

CMakeFiles/soundy.dir/app.cpp.o: CMakeFiles/soundy.dir/flags.make
CMakeFiles/soundy.dir/app.cpp.o: ../app.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/soundy.dir/app.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/soundy.dir/app.cpp.o -c /home/abo0ody/workspace/opencv/portaudio/app.cpp

CMakeFiles/soundy.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/soundy.dir/app.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abo0ody/workspace/opencv/portaudio/app.cpp > CMakeFiles/soundy.dir/app.cpp.i

CMakeFiles/soundy.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/soundy.dir/app.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abo0ody/workspace/opencv/portaudio/app.cpp -o CMakeFiles/soundy.dir/app.cpp.s

CMakeFiles/soundy.dir/app.cpp.o.requires:
.PHONY : CMakeFiles/soundy.dir/app.cpp.o.requires

CMakeFiles/soundy.dir/app.cpp.o.provides: CMakeFiles/soundy.dir/app.cpp.o.requires
	$(MAKE) -f CMakeFiles/soundy.dir/build.make CMakeFiles/soundy.dir/app.cpp.o.provides.build
.PHONY : CMakeFiles/soundy.dir/app.cpp.o.provides

CMakeFiles/soundy.dir/app.cpp.o.provides.build: CMakeFiles/soundy.dir/app.cpp.o

CMakeFiles/soundy.dir/audio.cpp.o: CMakeFiles/soundy.dir/flags.make
CMakeFiles/soundy.dir/audio.cpp.o: ../audio.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/soundy.dir/audio.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/soundy.dir/audio.cpp.o -c /home/abo0ody/workspace/opencv/portaudio/audio.cpp

CMakeFiles/soundy.dir/audio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/soundy.dir/audio.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abo0ody/workspace/opencv/portaudio/audio.cpp > CMakeFiles/soundy.dir/audio.cpp.i

CMakeFiles/soundy.dir/audio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/soundy.dir/audio.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abo0ody/workspace/opencv/portaudio/audio.cpp -o CMakeFiles/soundy.dir/audio.cpp.s

CMakeFiles/soundy.dir/audio.cpp.o.requires:
.PHONY : CMakeFiles/soundy.dir/audio.cpp.o.requires

CMakeFiles/soundy.dir/audio.cpp.o.provides: CMakeFiles/soundy.dir/audio.cpp.o.requires
	$(MAKE) -f CMakeFiles/soundy.dir/build.make CMakeFiles/soundy.dir/audio.cpp.o.provides.build
.PHONY : CMakeFiles/soundy.dir/audio.cpp.o.provides

CMakeFiles/soundy.dir/audio.cpp.o.provides.build: CMakeFiles/soundy.dir/audio.cpp.o

CMakeFiles/soundy.dir/colortracker.cpp.o: CMakeFiles/soundy.dir/flags.make
CMakeFiles/soundy.dir/colortracker.cpp.o: ../colortracker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/soundy.dir/colortracker.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/soundy.dir/colortracker.cpp.o -c /home/abo0ody/workspace/opencv/portaudio/colortracker.cpp

CMakeFiles/soundy.dir/colortracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/soundy.dir/colortracker.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abo0ody/workspace/opencv/portaudio/colortracker.cpp > CMakeFiles/soundy.dir/colortracker.cpp.i

CMakeFiles/soundy.dir/colortracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/soundy.dir/colortracker.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abo0ody/workspace/opencv/portaudio/colortracker.cpp -o CMakeFiles/soundy.dir/colortracker.cpp.s

CMakeFiles/soundy.dir/colortracker.cpp.o.requires:
.PHONY : CMakeFiles/soundy.dir/colortracker.cpp.o.requires

CMakeFiles/soundy.dir/colortracker.cpp.o.provides: CMakeFiles/soundy.dir/colortracker.cpp.o.requires
	$(MAKE) -f CMakeFiles/soundy.dir/build.make CMakeFiles/soundy.dir/colortracker.cpp.o.provides.build
.PHONY : CMakeFiles/soundy.dir/colortracker.cpp.o.provides

CMakeFiles/soundy.dir/colortracker.cpp.o.provides.build: CMakeFiles/soundy.dir/colortracker.cpp.o

# Object files for target soundy
soundy_OBJECTS = \
"CMakeFiles/soundy.dir/app.cpp.o" \
"CMakeFiles/soundy.dir/audio.cpp.o" \
"CMakeFiles/soundy.dir/colortracker.cpp.o"

# External object files for target soundy
soundy_EXTERNAL_OBJECTS =

soundy: CMakeFiles/soundy.dir/app.cpp.o
soundy: CMakeFiles/soundy.dir/audio.cpp.o
soundy: CMakeFiles/soundy.dir/colortracker.cpp.o
soundy: CMakeFiles/soundy.dir/build.make
soundy: /usr/local/lib/libopencv_calib3d.so
soundy: /usr/local/lib/libopencv_contrib.so
soundy: /usr/local/lib/libopencv_core.so
soundy: /usr/local/lib/libopencv_features2d.so
soundy: /usr/local/lib/libopencv_flann.so
soundy: /usr/local/lib/libopencv_gpu.so
soundy: /usr/local/lib/libopencv_highgui.so
soundy: /usr/local/lib/libopencv_imgproc.so
soundy: /usr/local/lib/libopencv_legacy.so
soundy: /usr/local/lib/libopencv_ml.so
soundy: /usr/local/lib/libopencv_nonfree.so
soundy: /usr/local/lib/libopencv_objdetect.so
soundy: /usr/local/lib/libopencv_photo.so
soundy: /usr/local/lib/libopencv_stitching.so
soundy: /usr/local/lib/libopencv_superres.so
soundy: /usr/local/lib/libopencv_ts.so
soundy: /usr/local/lib/libopencv_video.so
soundy: /usr/local/lib/libopencv_videostab.so
soundy: CMakeFiles/soundy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable soundy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/soundy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/soundy.dir/build: soundy
.PHONY : CMakeFiles/soundy.dir/build

CMakeFiles/soundy.dir/requires: CMakeFiles/soundy.dir/app.cpp.o.requires
CMakeFiles/soundy.dir/requires: CMakeFiles/soundy.dir/audio.cpp.o.requires
CMakeFiles/soundy.dir/requires: CMakeFiles/soundy.dir/colortracker.cpp.o.requires
.PHONY : CMakeFiles/soundy.dir/requires

CMakeFiles/soundy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/soundy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/soundy.dir/clean

CMakeFiles/soundy.dir/depend:
	cd /home/abo0ody/workspace/opencv/portaudio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abo0ody/workspace/opencv/portaudio /home/abo0ody/workspace/opencv/portaudio /home/abo0ody/workspace/opencv/portaudio/build /home/abo0ody/workspace/opencv/portaudio/build /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles/soundy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/soundy.dir/depend
