FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04
MAINTAINER Daniil Naumetc <daniil.naumetc@gmail.com>

RUN apt-get update && apt-get install -y \
  git \
  wget \
  python3-pip\
  liblapack-dev \
  libopenblas-dev \
  libcupti-dev


# Set CUDA_ROOT
ENV CUDA_ROOT /usr/local/cuda/bin

RUN pip3 install --upgrade pip
RUN pip3 install numpy pandas scipy scikit-learn h5py

RUN pip3 install --upgrade tensorflow-gpu keras
