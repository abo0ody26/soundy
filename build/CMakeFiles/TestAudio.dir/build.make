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
include CMakeFiles/TestAudio.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestAudio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestAudio.dir/flags.make

CMakeFiles/TestAudio.dir/audio.cpp.o: CMakeFiles/TestAudio.dir/flags.make
CMakeFiles/TestAudio.dir/audio.cpp.o: ../audio.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/TestAudio.dir/audio.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TestAudio.dir/audio.cpp.o -c /home/abo0ody/workspace/opencv/portaudio/audio.cpp

CMakeFiles/TestAudio.dir/audio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestAudio.dir/audio.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abo0ody/workspace/opencv/portaudio/audio.cpp > CMakeFiles/TestAudio.dir/audio.cpp.i

CMakeFiles/TestAudio.dir/audio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestAudio.dir/audio.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abo0ody/workspace/opencv/portaudio/audio.cpp -o CMakeFiles/TestAudio.dir/audio.cpp.s

CMakeFiles/TestAudio.dir/audio.cpp.o.requires:
.PHONY : CMakeFiles/TestAudio.dir/audio.cpp.o.requires

CMakeFiles/TestAudio.dir/audio.cpp.o.provides: CMakeFiles/TestAudio.dir/audio.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestAudio.dir/build.make CMakeFiles/TestAudio.dir/audio.cpp.o.provides.build
.PHONY : CMakeFiles/TestAudio.dir/audio.cpp.o.provides

CMakeFiles/TestAudio.dir/audio.cpp.o.provides.build: CMakeFiles/TestAudio.dir/audio.cpp.o

CMakeFiles/TestAudio.dir/TestAudio.cpp.o: CMakeFiles/TestAudio.dir/flags.make
CMakeFiles/TestAudio.dir/TestAudio.cpp.o: ../TestAudio.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/TestAudio.dir/TestAudio.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TestAudio.dir/TestAudio.cpp.o -c /home/abo0ody/workspace/opencv/portaudio/TestAudio.cpp

CMakeFiles/TestAudio.dir/TestAudio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestAudio.dir/TestAudio.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abo0ody/workspace/opencv/portaudio/TestAudio.cpp > CMakeFiles/TestAudio.dir/TestAudio.cpp.i

CMakeFiles/TestAudio.dir/TestAudio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestAudio.dir/TestAudio.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abo0ody/workspace/opencv/portaudio/TestAudio.cpp -o CMakeFiles/TestAudio.dir/TestAudio.cpp.s

CMakeFiles/TestAudio.dir/TestAudio.cpp.o.requires:
.PHONY : CMakeFiles/TestAudio.dir/TestAudio.cpp.o.requires

CMakeFiles/TestAudio.dir/TestAudio.cpp.o.provides: CMakeFiles/TestAudio.dir/TestAudio.cpp.o.requires
	$(MAKE) -f CMakeFiles/TestAudio.dir/build.make CMakeFiles/TestAudio.dir/TestAudio.cpp.o.provides.build
.PHONY : CMakeFiles/TestAudio.dir/TestAudio.cpp.o.provides

CMakeFiles/TestAudio.dir/TestAudio.cpp.o.provides.build: CMakeFiles/TestAudio.dir/TestAudio.cpp.o

# Object files for target TestAudio
TestAudio_OBJECTS = \
"CMakeFiles/TestAudio.dir/audio.cpp.o" \
"CMakeFiles/TestAudio.dir/TestAudio.cpp.o"

# External object files for target TestAudio
TestAudio_EXTERNAL_OBJECTS =

TestAudio: CMakeFiles/TestAudio.dir/audio.cpp.o
TestAudio: CMakeFiles/TestAudio.dir/TestAudio.cpp.o
TestAudio: CMakeFiles/TestAudio.dir/build.make
TestAudio: /usr/local/lib/libopencv_calib3d.so
TestAudio: /usr/local/lib/libopencv_contrib.so
TestAudio: /usr/local/lib/libopencv_core.so
TestAudio: /usr/local/lib/libopencv_features2d.so
TestAudio: /usr/local/lib/libopencv_flann.so
TestAudio: /usr/local/lib/libopencv_gpu.so
TestAudio: /usr/local/lib/libopencv_highgui.so
TestAudio: /usr/local/lib/libopencv_imgproc.so
TestAudio: /usr/local/lib/libopencv_legacy.so
TestAudio: /usr/local/lib/libopencv_ml.so
TestAudio: /usr/local/lib/libopencv_nonfree.so
TestAudio: /usr/local/lib/libopencv_objdetect.so
TestAudio: /usr/local/lib/libopencv_photo.so
TestAudio: /usr/local/lib/libopencv_stitching.so
TestAudio: /usr/local/lib/libopencv_superres.so
TestAudio: /usr/local/lib/libopencv_ts.so
TestAudio: /usr/local/lib/libopencv_video.so
TestAudio: /usr/local/lib/libopencv_videostab.so
TestAudio: CMakeFiles/TestAudio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable TestAudio"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestAudio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestAudio.dir/build: TestAudio
.PHONY : CMakeFiles/TestAudio.dir/build

CMakeFiles/TestAudio.dir/requires: CMakeFiles/TestAudio.dir/audio.cpp.o.requires
CMakeFiles/TestAudio.dir/requires: CMakeFiles/TestAudio.dir/TestAudio.cpp.o.requires
.PHONY : CMakeFiles/TestAudio.dir/requires

CMakeFiles/TestAudio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TestAudio.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TestAudio.dir/clean

CMakeFiles/TestAudio.dir/depend:
	cd /home/abo0ody/workspace/opencv/portaudio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abo0ody/workspace/opencv/portaudio /home/abo0ody/workspace/opencv/portaudio /home/abo0ody/workspace/opencv/portaudio/build /home/abo0ody/workspace/opencv/portaudio/build /home/abo0ody/workspace/opencv/portaudio/build/CMakeFiles/TestAudio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestAudio.dir/depend

