FROM gcc:4.9

LABEL maintainer="adam.v.stephen@gmail.com"

WORKDIR /opt/cint

# Basic Dependencies

RUN apt-get update && apt-get install unzip

# Get the Root cint sources from github 

ENV GIT_URL="https://github.com/AdamVStephen/cint/archive/master.zip"

RUN mkdir -p /opt/cint/src

RUN wget --no-check-certificate -O /opt/cint/src/master.zip $GIT_URL

# Unpack, configure, build and install

RUN ls -l /opt/cint/src

RUN cd /opt/cint/src; unzip master.zip; 

RUN ls -l /opt/cint/src/cint-master/

RUN cd /opt/cint/src/cint-master; tar -zxvf cint-5.18.00.tgz; cd cint-5.18.00 ; ./configure --prefix=/usr/local --readlinelib=/lib/x86_64-linux-gnu/libreadline.so.6; make ; make install

ENV LD_LIBRARY_PATH=/usr/local/lib

CMD ldd /usr/local/bin/cint
