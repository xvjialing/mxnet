# -*- mode: dockerfile -*-
# dockerfile to build libmxnet.so on CPU
FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential git libatlas-base-dev libopencv-dev python-opencv \
    libcurl4-openssl-dev libgtest-dev cmake wget unzip python-dev python3-dev

RUN git clone --recursive https://github.com/dmlc/mxnet

RUN cd /tmp && wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && python2 get-pip.py

RUN pip2 install nose pylint numpy nose-timer requests
RUN pip3 install nose pylint numpy nose-timer requests

