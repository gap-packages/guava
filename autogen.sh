#!/bin/sh
#
# Regenerate configure from configure.ac. Requires GNU autoconf.
set -ex
cd src/leon
autoreconf -fiv
