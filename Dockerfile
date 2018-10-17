# -*- mode: dockerfile -*-
# dockerfile to build libmxnet.so on CPU
FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential git libatlas-base-dev libopencv-dev python-opencv \
    libcurl4-openssl-dev libgtest-dev cmake wget unzip

COPY install/cpp.sh install/
RUN install/cpp.sh

RUN git clone --recursive https://github.com/dmlc/mxnet && cd mxnet && \
    make -j$(nproc) && \
    rm -r build
# -*- mode: dockerfile -*-
# part of the dockerfile to install the python binding

COPY install/python.sh install/
RUN install/python.sh
ENV PYTHONPATH=/mxnet/python
CMD sh -c 'ln -s /dev/null /dev/raw1394'; bash
