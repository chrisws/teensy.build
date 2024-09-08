dnl 
dnl Configure teensy3 project
dnl 
AC_INIT([my-project], [0.0.1])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_PROG_RANLIB
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])

dnl settings for teensy 3.2
F_CPU="72000000"
MCU="mk20dx256"
MCU_D="__`echo $MCU | tr '[a-z]' '[A-Z]'`__"
MCU="${MCU}" F_CPU="${F_CPU}"
MCU_LD="`pwd`/libs/cores/teensy3/${MCU}.ld"

AC_SUBST(TOOLS_PATH)
AC_SUBST(ARM_MATH_PATH)
AC_SUBST(MCU)
AC_DEFINE(NUM_THREADS, 3, [Number of threads used in the project])

dnl compiler options for C and C++
CPPFLAGS="-Wall -g -Os -ffunction-sections -fdata-sections -nostdlib -MMD"
CPPFLAGS="${CPPFLAGS} -mcpu=cortex-m4 -mthumb"
CPPFLAGS="${CPPFLAGS} -DUSB_SERIAL -DLAYOUT_US_ENGLISH -DTEENSYDUINO=132"
CPPFLAGS="${CPPFLAGS} -D${MCU_D} -DF_CPU=${F_CPU}"

dnl compiler options for C++ only
CXXFLAGS="-std=gnu++0x -felide-constructors -fno-exceptions -fno-rtti"

dnl linker options
LDFLAGS="-lm -Os -Wl,--gc-sections -T ${MCU_LD}"
LDFLAGS="${LDFLAGS} -mcpu=cortex-m4 -mthumb"

dnl change default aru setting to avoid warning
ARFLAGS=cr
AC_SUBST(ARFLAGS)

dnl use the arm library to match the mfloat settings
ARM_MATH_LIB=arm_cortexM4l_math
AC_SUBST(ARM_MATH_LIB)

AC_PROG_CC
AC_PROG_CXX
AM_PROG_AS
AC_CONFIG_FILES([
Makefile
src/Makefile
libs/Audio/Makefile
libs/Bounce2/Makefile
libs/SD/Makefile
libs/SPI/Makefile
libs/SerialFlash/Makefile
libs/Wire/Makefile
libs/TeensyThreads/Makefile
libs/cores/teensy3/Makefile
])
AC_OUTPUT

