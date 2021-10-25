#!/bin/bash

# build ZThread-2.3.2 in MSYS2/MINGW64 environemnt

# most reference from:
#  https://my.oschina.net/zfar/blog/2907204
#  https://sourceforge.net/p/msys2/mailman/msys2-users/thread/561FB335.2060507%40verizon.net/
#

# not use autoconf/automake version from exist files
export WANT_AUTOMAKE=latest

libtoolize --copy --force
aclocal -I share
automake --add-missing --copy
autoconf
./configure
make -j4
make install
