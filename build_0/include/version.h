/*
 * This file is part of the GROMACS molecular simulation package.
 *
 * Copyright (c) 1991-2000, University of Groningen, The Netherlands.
 * Copyright (c) 2001-2012, The GROMACS development team,
 * check out http://www.gromacs.org for more information.
 * Copyright (c) 2012, by the GROMACS development team, led by
 * David van der Spoel, Berk Hess, Erik Lindahl, and including many
 * others, as listed in the AUTHORS file in the top-level source
 * directory and at http://www.gromacs.org.
 *
 * GROMACS is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 2.1
 * of the License, or (at your option) any later version.
 *
 * GROMACS is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with GROMACS; if not, see
 * http://www.gnu.org/licenses, or write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA.
 *
 * If you want to redistribute modifications to GROMACS, please
 * consider that scientific software is very special. Version
 * control is crucial - bugs must be traceable. We will be happy to
 * consider code for inclusion in the official distribution, but
 * derived work must not be called official GROMACS. Details are found
 * in the README & COPYING files - if they are missing, get the
 * official version at http://www.gromacs.org.
 *
 * To help us fund GROMACS development, we humbly ask that you cite
 * the research papers on the package. Check out http://www.gromacs.org.
 */

#ifndef _gmx_version_h
#define _gmx_version_h

/* This include file will be configured by CMake and contains version
   information, primarily for software that links to Gromacs.

   This file exists from 4.6 onward. In 4.6, it is #included in
   include/typedefs.h, but that is not guaranteed to be the case in later
   versions.

   The versions are in numerical form, where, for example, version
   4.6.1 would be 40601.
   The values come from the main CMakeLists.txt.

   This header defines two values, the Gromacs version, and the API version.

   The API version is defined in GMX_API_VERSION, and denotes the
   version of the programmer interface, i.e. the installed header files
   and compatible library.

   programs written against the gromacs library can use this file
   to provide some backward compatibility even though parts of the API
   change. For example:

#include <gromacs/version.h>
#if (GMX_API_VERSION < 50000)
    .... <do pre-5.0 stuff>
#else
    .... <do post-5.0 stuff>
#endif

    where version.h is included directly. For code that must be compatible
    between 4.5 and 4.6, an interim solution is to include typedefs.h, which
    includes this file:

#include <gromacs/typedefs.h>
#if !defined(GMX_API_VERSION) || (GMX_API_VERSION < 40600)
    ....  <do 4.5 specific stuff>
#elif (GMX_API_VERSION < 40700)
    ....  <do 4.6 specific stuff>
#endif

   */
#define GMX_API_VERSION 40601


/* GMX_VERSION contains the version number of the actual Gromacs library 
   and the Gromacs programs, in numerical format.

   As of 4.6, the Gromacs and API versions are the same, but this is not
   guaranteed to be the case in the future. */
#define GMX_VERSION 40601

#endif /* _gmx_version_h */

