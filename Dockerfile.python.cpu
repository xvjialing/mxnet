# -*- mode: dockerfile -*-
# dockerfile to build libmxnet.so on CPU
FROM ubuntu:14.04

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
