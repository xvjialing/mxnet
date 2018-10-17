# -*- mode: dockerfile -*-
# dockerfile to build libmxnet.so on CPU
FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential git libatlas-base-dev libopencv-dev python-opencv \
    libcurl4-openssl-dev libgtest-dev cmake wget unzip

