#!/bin/sh
#
# Regenerate configure from configure.ac. Requires GNU autoconf.
set -ex
cd src/leon
#autoreconf -fiv
autoheader
# WORKAROUND: invoke automake (even though we don't use it) to ensure
# that `install-sh` gets added; this works around a bug in older
# versions of GNU autotools.
automake --force-missing --add-missing --copy || :
autoconf
