/*
 * This file is part of the GROMACS molecular simulation package.
 *
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
/*! \internal \file
 * \brief
 * Build information from the build system.
 *
 * Used for log and version output.
 */

/** Hardware and OS version for build host */
#define BUILD_HOST              "Darwin 18.0.0 x86_64"

/** Date and time for build */
#define BUILD_TIME              "Wed Feb  5 12:32:55 CET 2020"

/** User doing build */
#define BUILD_USER              "kseniakorshunova@grs054.grs.kfa-juelich.de [CMAKE]"

/** CPU vendor for build host */
#define BUILD_CPU_VENDOR        "GenuineIntel"

/** CPU brand for build host */
#define BUILD_CPU_BRAND         "Intel(R) Core(TM) i5-5257U CPU @ 2.70GHz"

/** CPU family for build host */
#define BUILD_CPU_FAMILY        6

/** CPU model for build host */
#define BUILD_CPU_MODEL         61

/** CPU stepping for build host */
#define BUILD_CPU_STEPPING      4

/** CPU feature list for build host */
#define BUILD_CPU_FEATURES      "aes apic avx avx2 clfsh cmov cx8 cx16 f16c fma htt lahf_lm mmx msr nonstop_tsc pcid pclmuldq pdcm pdpe1gb popcnt pse rdrnd rdtscp sse2 sse3 sse4.1 sse4.2 ssse3 tdt x2apic"

/** C compiler used to build */
#define BUILD_C_COMPILER        "/Library/Developer/CommandLineTools/usr/bin/gcc Clang Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1"

/** C compiler flags used to build */
#define BUILD_CFLAGS            "-mavx    -Wall -Wno-unused -Wunused-value -Wno-unknown-pragmas    -O3 -DNDEBUG"

/** C++ compiler flags used to build, or empty string if no C++ */
#define BUILD_CXX_COMPILER      ""

/** C++ compiler flags used to build */
#define BUILD_CXXFLAGS          ""

/** CUDA nvcc compiler version information */
#define CUDA_NVCC_COMPILER_INFO ""

/** CUDA nvcc compiler flags */
#define CUDA_NVCC_COMPILER_FLAGS ""
