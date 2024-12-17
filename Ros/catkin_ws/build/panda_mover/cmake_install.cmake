# Install script for directory: /home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover/msg" TYPE FILE FILES
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/msg/ListOfFloats.msg"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/msg/ListOfPoses.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover/srv" TYPE FILE FILES
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/DiscardService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/ExecutionService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/GetTrainingDataService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/GripperService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/PlannerService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/SampleService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/StateService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/TrainingDataService.srv"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/srv/TrainingService.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover/cmake" TYPE FILE FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/panda_mover-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/include/panda_mover")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/share/roseus/ros/panda_mover")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/share/common-lisp/ros/panda_mover")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/share/gennodejs/ros/panda_mover")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/lib/python3/dist-packages/panda_mover")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/lib/python3/dist-packages/panda_mover" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/lib/python3/dist-packages/panda_mover" FILES_MATCHING REGEX "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/devel/lib/python3/dist-packages/panda_mover/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/panda_mover.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover/cmake" TYPE FILE FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/panda_mover-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover/cmake" TYPE FILE FILES
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/panda_moverConfig.cmake"
    "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/panda_moverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover" TYPE FILE FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/panda_mover" TYPE PROGRAM FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/build/panda_mover/catkin_generated/installspace/mover.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/launch" REGEX "/setup\\_assistant\\.launch$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/panda_mover" TYPE DIRECTORY FILES "/home/talha/ProjectClones/RAMPAclone3/rampa_plus/Ros/catkin_ws/src/panda_mover/config")
endif()

