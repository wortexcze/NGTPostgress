# Install script for directory: /home/jakub/NGT-master/lib/NGT

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/jakub/NGT-master/build/lib/NGT/libngt.so.1.12.2"
    "/home/jakub/NGT-master/build/lib/NGT/libngt.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libngt.so.1.12.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libngt.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/jakub/NGT-master/build/lib/NGT/libngt.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libngt.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libngt.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libngt.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/jakub/NGT-master/build/lib/NGT/libngt.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/NGT" TYPE FILE FILES
    "/home/jakub/NGT-master/lib/NGT/ArrayFile.h"
    "/home/jakub/NGT-master/lib/NGT/Capi.h"
    "/home/jakub/NGT-master/lib/NGT/Clustering.h"
    "/home/jakub/NGT-master/lib/NGT/Command.h"
    "/home/jakub/NGT-master/lib/NGT/Common.h"
    "/home/jakub/NGT-master/lib/NGT/Graph.h"
    "/home/jakub/NGT-master/lib/NGT/GraphOptimizer.h"
    "/home/jakub/NGT-master/lib/NGT/GraphReconstructor.h"
    "/home/jakub/NGT-master/lib/NGT/HashBasedBooleanSet.h"
    "/home/jakub/NGT-master/lib/NGT/Index.h"
    "/home/jakub/NGT-master/lib/NGT/MmapManager.h"
    "/home/jakub/NGT-master/lib/NGT/MmapManagerDefs.h"
    "/home/jakub/NGT-master/lib/NGT/MmapManagerException.h"
    "/home/jakub/NGT-master/lib/NGT/MmapManagerImpl.hpp"
    "/home/jakub/NGT-master/lib/NGT/Node.h"
    "/home/jakub/NGT-master/lib/NGT/ObjectRepository.h"
    "/home/jakub/NGT-master/lib/NGT/ObjectSpace.h"
    "/home/jakub/NGT-master/lib/NGT/ObjectSpaceRepository.h"
    "/home/jakub/NGT-master/lib/NGT/Optimizer.h"
    "/home/jakub/NGT-master/lib/NGT/PrimitiveComparator.h"
    "/home/jakub/NGT-master/lib/NGT/SharedMemoryAllocator.h"
    "/home/jakub/NGT-master/lib/NGT/Thread.h"
    "/home/jakub/NGT-master/lib/NGT/Tree.h"
    "/home/jakub/NGT-master/lib/NGT/Version.h"
    "/home/jakub/NGT-master/build/lib/NGT/defines.h"
    "/home/jakub/NGT-master/build/lib/NGT/version_defs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/NGT/NGTQ" TYPE FILE FILES
    "/home/jakub/NGT-master/lib/NGT/NGTQ/Command.h"
    "/home/jakub/NGT-master/lib/NGT/NGTQ/Quantizer.h"
    )
endif()

