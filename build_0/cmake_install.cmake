# Install script for directory: /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_0")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdatax" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_0/share/gromacs/COPYING")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_0/share/gromacs" TYPE FILE FILES "/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/COPYING")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/share/cmake_install.cmake")
  include("/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/include/cmake_install.cmake")
  include("/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/src/cmake_install.cmake")
  include("/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/scripts/cmake_install.cmake")
  include("/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/tests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/build_0/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
