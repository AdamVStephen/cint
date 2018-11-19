# cint : C Interpreter Tools

Redistributing what was previously publically domain C interpreter as part of ROOT toolkit from CERN used for some MARTe development (though deprecated in favour of Damien Karkinsky's llvm/clang replacement).

This repository includes a copy of the .tar.gz sources which were previously on an ftp server which has disappeared.   The CERN root strategy on this front has taken a different direction, so we're frozen on this old copy.

Also as well as cint-5.18.00.tgz there are some Docker "Dockerfile" templates which have been used to build/install the sources on top of various base operating systems.   See also my docker hub account avstephen.

gcc-cint.Dockerfile : this is a Debian 8.9 (jessie) with a gcc 4.9 plus instructions that download these sources, unpack, configure, make and install.


