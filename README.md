# docker-ml
A minimal image with GPU version of Tensorflow, Keras and Jupyter. Build on top of nvidia-docker (nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04), which is totally necessary to run it.

## Build
docker build -t kekonen/ml:gpu .

## Run
nvidia-docker run -it --rm -p 8888:8888 -p 6006:6006 -v ~/code/ml/kaggle:/root/sharedfolder kekonen/ml:gpu jupyter notebook --allow-root --ip=0.0.0.0 --port=8888

## Installations
The image contents only a set of necessary installations for Tensorflow and Keras (*GPU*)

### APT
- git
- wget
- bzip2
- python3-pip
- liblapack-dev
- libopenblas-dev
- libcupti-dev
- ca-certificates
- sudo
- locales
- fonts-liberation

### Pip modules
- *tensorflow-gpu*
- *keras*
- *jupyter*
- numpy
- pandas
- setuptools
- scipy
- scikit-learn
- h5py
- matplotlib
- nltk
- Pillow
- scikit-image
- opencv-python
- sklearn

