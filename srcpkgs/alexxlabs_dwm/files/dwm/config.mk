# dwm version
VERSION = 6.2

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS} -lImlib2

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS} -fstack-clash-protection -D_FORTIFY_SOURCE=2 -mtune=generic -O2 -pipe    -fdebug-prefix-map=/builddir/chadwm-main=. -fstack-clash-protection -D_FORTIFY_SOURCE=2 -mtune=generic -O2 -pipe    -fdebug-prefix-map=/builddir/chadwm-main=.
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS} -fstack-clash-protection -D_FORTIFY_SOURCE=2 -mtune=generic -O2 -pipe    -fdebug-prefix-map=/builddir/chadwm-main=. -fstack-clash-protection -D_FORTIFY_SOURCE=2 -mtune=generic -O2 -pipe    -fdebug-prefix-map=/builddir/chadwm-main=.
LDFLAGS  = ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
