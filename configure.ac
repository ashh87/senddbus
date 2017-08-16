#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([ping-common.h])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

AC_CHECK_PROGS(MOC, [moc-qt5 moc])
AC_CHECK_PROGS(UIC, [uic-qt5 uic])
AC_CHECK_PROGS(RCC, [rcc])
if test -z "$MOC" || test -z "$UIC" || test -z "$RCC"; then
   AC_MSG_ERROR([Qt utility programs moc, uic, and rcc are required.])
fi

# Checks for libraries.

# Check for Qt libraries
PKG_CHECK_MODULES(QT, [Qt5Core, Qt5DBus], [], [AC_MSG_ERROR([Qt libraries are required.])])

# Retrieve Qt compilation and linker flags
CPPFLAGS="`$PKG_CONFIG --cflags-only-I Qt5Core Qt5DBus` $CPPFLAGS"
LDFLAGS="`$PKG_CONFIG --libs-only-L Qt5Core Qt5DBus` $LDFLAGS"
LIBS="`$PKG_CONFIG --libs-only-l Qt5Core Qt5DBus` $LIBS"

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
