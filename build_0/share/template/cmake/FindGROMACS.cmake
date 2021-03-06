#
# This file is part of the GROMACS molecular simulation package.
#
# Copyright (c) 2009-2011, by the VOTCA Development Team (http://www.votca.org)
# Copyright (c) 2012,2013 by the GROMACS development team, led by
# David van der Spoel, Berk Hess, Erik Lindahl, and including many
# others, as listed in the AUTHORS file in the top-level source
# directory and at http://www.gromacs.org.
#
# GROMACS is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License
# as published by the Free Software Foundation; either version 2.1
# of the License, or (at your option) any later version.
#
# GROMACS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with GROMACS; if not, see
# http://www.gnu.org/licenses, or write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA.
#
# If you want to redistribute modifications to GROMACS, please
# consider that scientific software is very special. Version
# control is crucial - bugs must be traceable. We will be happy to
# consider code for inclusion in the official distribution, but
# derived work must not be called official GROMACS. Details are found
# in the README & COPYING files - if they are missing, get the
# official version at http://www.gromacs.org.
#
# To help us fund GROMACS development, we humbly ask that you cite
# the research papers on the package. Check out http://www.gromacs.org.
#
# - Finds parts of GROMACS
# Find the native GROMACS compents headers and libraries.
#
#  GROMACS_INCLUDE_DIRS   - where to find GROMACS headers.
#  GROMACS_LIBRARIES      - List of libraries when used by GROMACS.
#  GROMACS_FOUND          - True if all GROMACS components were found.
#  GROMACS_DEFINITIONS    - Extra definies needed by GROMACS
#  GROMACS_PKG            - The name of the pkg-config package needed
#  GROMACS_VERSION        - GROMACS lib interface version
#  GROMACS_MAJOR_VERSION  - GROMACS lib interface major version
#  GROMACS_MINOR_VERSION  - GROMACS lib interface minor version
#  GROMACS_PATCH_LEVEL    - GROMACS lib interface patch level
#  GROMACS_VERSION_STRING - GROMACS lib interface version string (e.g. "4.5.3")
#

find_package(PkgConfig)
list(LENGTH GROMACS_FIND_COMPONENTS GROMACS_NUM_COMPONENTS_WANTED)
if(${GROMACS_NUM_COMPONENTS_WANTED} LESS 1)
  message(FATAL_ERROR "find_package(GROMACS) needs to be supplied with the name of a GROMACS component for which it can search")
elseif(${GROMACS_NUM_COMPONENTS_WANTED} GREATER 1)
  message(FATAL_ERROR "We only support finding one GROMACS component at this point, go and implement it ;-)")
elseif(${GROMACS_FIND_COMPONENTS} MATCHES "^lib(gmx|gromacs)(_d)?$")
  set(GROMACS_PKG "${GROMACS_FIND_COMPONENTS}")
  string(REGEX REPLACE "^lib(.*)" "\\1" GROMACS_LIBRARY_NAME "${GROMACS_PKG}")
else()
  message(FATAL_ERROR "We do not support finding ${GROMACS_FIND_COMPONENTS}, go and implement it ;-)")
endif()

if(GMX_DOUBLE AND NOT "${GROMACS_PKG}" MATCHES "_d$")
  message(FATAL_ERROR "GMX_DOUBLE was true, but I was asked to find ${GROMACS_PKG} (without _d at the end) - illogical!")
endif(GMX_DOUBLE AND NOT "${GROMACS_PKG}" MATCHES "_d$")
if(NOT GMX_DOUBLE AND "${GROMACS_PKG}" MATCHES "_d$")
  message(FATAL_ERROR "GMX_DOUBLE was false, but I was asked to find ${GROMACS_PKG} (with _d at the end) - illogical!")
endif(NOT GMX_DOUBLE AND "${GROMACS_PKG}" MATCHES "_d$")

pkg_check_modules(PC_GROMACS ${GROMACS_PKG})
if (GMX_DOUBLE)
  list(APPEND GMX_DEFS "-DGMX_DOUBLE")
endif(GMX_DOUBLE)
if (PC_GROMACS_CFLAGS_OTHER)
  foreach(DEF ${PC_GROMACS_CFLAGS_OTHER})
    if (${DEF} MATCHES "^-D")
      list(APPEND GMX_DEFS ${DEF})
    endif (${DEF} MATCHES "^-D")
  endforeach(DEF)
  list(REMOVE_DUPLICATES GMX_DEFS)
endif (PC_GROMACS_CFLAGS_OTHER)
set(GROMACS_DEFINITIONS "${GMX_DEFS}" CACHE STRING "extra GROMACS definitions")

find_library(GROMACS_LIBRARY NAMES ${GROMACS_LIBRARY_NAME} HINTS ${PC_GROMACS_LIBRARY_DIRS} /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_0/lib)
if (GROMACS_LIBRARY)
  if("${GROMACS_LIBRARY}" MATCHES "lib(gmx|gromacs)[^;]*\\.a")
    if(PC_GROMACS_LIBRARIES)
      list(REMOVE_ITEM PC_GROMACS_LIBRARIES ${GROMACS_LIBRARY_NAME})
      foreach (LIB ${PC_GROMACS_LIBRARIES})
        find_library(GROMACS_${LIB} NAMES ${LIB} HINTS ${PC_GROMACS_LIBRARY_DIRS} /Users/kseniakorshunova/Documents/PhD_project/gromacs_4.6.5/gromacs-4.6.5/install_0/include)
        list(APPEND GMX_DEP_LIBRARIES ${GROMACS_${LIB}})
        unset(GROMACS_${LIB} CACHE)
      endforeach(LIB)
    endif(PC_GROMACS_LIBRARIES)
    if(PC_GROMACS_CFLAGS_OTHER)
      foreach(LIB ${PC_GROMACS_CFLAGS_OTHER})
        if (${LIB} MATCHES "thread")
          find_package(Threads REQUIRED)
          list(APPEND GMX_DEP_LIBRARIES ${CMAKE_THREAD_LIBS_INIT})
        endif (${LIB} MATCHES "thread")
      endforeach(LIB)
    endif(PC_GROMACS_CFLAGS_OTHER)
    set(GROMACS_DEP_LIBRARIES "${GMX_DEP_LIBRARIES}" CACHE FILEPATH "GROMACS depency libs (only needed for static (.a) ${GROMACS_LIBRARY}")
  endif("${GROMACS_LIBRARY}" MATCHES "lib(gmx|gromacs)[^;]*\\.a")
  include(CheckLibraryExists)
  check_library_exists("${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" GromacsVersion "" FOUND_GROMACS_VERSION)
  if(NOT FOUND_GROMACS_VERSION)
    message(FATAL_ERROR "Could not find GromacsVersion in ${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}, take look at the error message in ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeError.log to find out what was going wrong. If you don't have pkg-config installed you will most likely have to set GROMACS_LIBRARY and GROMACS_DEP_LIBRARY by hand which sets the GROMACS lib and its depencies (e.g. -DGROMACS_LIBRARY='/path/to/libgmx.so' -DGROMACS_DEP_LIBRARIES='/path/to/libblas.so;/path/to/libm.so') !")
  endif(NOT FOUND_GROMACS_VERSION)
  check_library_exists("${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" init_mtop "" FOUND_GROMACS_INIT_MTOP)
  if(NOT FOUND_GROMACS_INIT_MTOP)
    message(FATAL_ERROR "Could not find init_mtop in the GROMACS library, take look at the error message in ${CMAKE_BINARY_DIR}${CMAKE_FILES_DIRECTORY}/CMakeError.log to find out what was going wrong. This most likely means that your GROMACS version is too old, we need at least GROMACS 4.0.7.")
  endif(NOT FOUND_GROMACS_INIT_MTOP)
  set(GROMACS_VERSION 40000)
  check_library_exists("${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" output_env_init "" FOUND_GROMACS_OUTPUT_ENV_INIT)
  if(FOUND_GROMACS_OUTPUT_ENV_INIT)
    set(GROMACS_VERSION 40500)
  endif(FOUND_GROMACS_OUTPUT_ENV_INIT)
  check_library_exists("${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" gmx_nonbonded_setup "" FOUND_GROMACS_GMX_NONBONDED_SETUP)
  if(FOUND_GROMACS_GMX_NONBONDED_SETUP)
    set(GROMACS_VERSION 40600)
  endif(FOUND_GROMACS_GMX_NONBONDED_SETUP)
  check_library_exists("${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" init_domdec_vsites "" FOUND_GROMACS_INIT_DOMDEC_VSITES)
  if(FOUND_GROMACS_INIT_DOMDEC_VSITES)
    set(GROMACS_VERSION 50000)
  endif(FOUND_GROMACS_INIT_DOMDEC_VSITES)
  set(GROMACS_VERSION ${GROMACS_VERSION} CACHE STRING "GROMACS lib interface version")
else(GROMACS_LIBRARY)
  set(GROMACS_VERSION 40500)
endif (GROMACS_LIBRARY)

math(EXPR GROMACS_MAJOR_VERSION "${GROMACS_VERSION} / 10000")
math(EXPR GROMACS_MINOR_VERSION "${GROMACS_VERSION} / 100 % 100")
math(EXPR GROMACS_PATCH_LEVEL "${GROMACS_VERSION} % 100")
set(GROMACS_VERSION_STRING "${GROMACS_MAJOR_VERSION}.${GROMACS_MINOR_VERSION}.${GROMACS_PATCH_LEVEL}")

if ("${GROMACS_PKG}" MATCHES "libgmx")
  if (${GROMACS_VERSION} EQUAL 40000)
    find_path(GROMACS_INCLUDE_DIR tpxio.h HINTS ${PC_GROMACS_INCLUDE_DIRS})
  else(${GROMACS_VERSION} EQUAL 40000)
   find_path(GROMACS_INCLUDE_DIR gromacs/tpxio.h HINTS ${PC_GROMACS_INCLUDE_DIRS})
  endif(${GROMACS_VERSION} EQUAL 40000)
elseif("${GROMACS_PKG}" MATCHES "libgromacs")
  find_path(GROMACS_INCLUDE_DIR gromacs/legacyheaders/tpxio.h HINTS ${PC_GROMACS_INCLUDE_DIRS})
endif("${GROMACS_PKG}" MATCHES "libgmx")

set(GROMACS_LIBRARIES "${GROMACS_LIBRARY};${GROMACS_DEP_LIBRARIES}" )
set(GROMACS_INCLUDE_DIRS ${GROMACS_INCLUDE_DIR} )

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set GROMACS_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(GROMACS DEFAULT_MSG GROMACS_LIBRARY GROMACS_INCLUDE_DIR)

mark_as_advanced(GROMACS_INCLUDE_DIR GROMACS_LIBRARY GROMACS_DEFINITIONS GROMACS_PKG GROMACS_VERSION GROMACS_DEP_LIBRARIES)
