FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04
MAINTAINER Daniil Naumetc <daniil.naumetc@gmail.com>

# nvidia-docker run -it -p 8888:8888 -p 6006:6006 -v ~/code/ml/kaggle:/root/sharedfolder kekonen/ml:gpu jupyter notebook --allow-root --ip=0.0.0.0 --port=8888

EXPOSE 8888

RUN apt-get update && apt-get install -y \
  git \
  wget \
  bzip2 \
  python3-pip\
  liblapack-dev \
  libopenblas-dev \
  libcupti-dev \
  ca-certificates \
  sudo \
  locales \
  fonts-liberation \
&& apt-get clean

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
locale-gen


# Set CUDA_ROOT
ENV CUDA_ROOT /usr/local/cuda/bin

RUN pip3 install --upgrade pip
RUN pip3 install \
  numpy \
  pandas \
  setuptools \
  scipy \
  scikit-learn \
  jupyter \
  h5py

RUN pip3 install --upgrade tensorflow-gpu keras


