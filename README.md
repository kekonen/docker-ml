# Docker machine-learning image with Keras and Tensorflow
A minimal image with **GPU** version of Tensorflow, Keras and Jupyter on top of **Python 3**. Built with **nvidia-docker**, which is totally necessary to run it. 

** CPU version available **

## Usage
Before you continue with ** GPU version **, [install NVIDIA-docker with NVIDIA drivers and Docker by the guides under the link](https://github.com/NVIDIA/nvidia-docker)
### Build
- GPU: `docker build -f Dockerfile.gpu -t kekonen/ml:gpu .`
- CPU: `docker build -f Dockerfile.cpu -t kekonen/ml:cpu .`

### Run
`nvidia-docker run -it --rm --name docker-ml -p 8888:8888 -p 6006:6006 -v ~/code/ml/kaggle:/root/shared -v /media/daniil/2E18DD98594857B9/data:/root/data kekonen/ml:gpu jupyter notebook --allow-root --ip=0.0.0.0 --port=8888`
(Replace GPU with CPU)

### Access
- Jupyter Notebook: open `http://localhost:8888` in your browser
- Attach to command line `docker attach docker-ml`


## Installations
The image contents a set of necessary installations for Tensorflow with Keras (**GPU**) and Jupyter Notebook. Additionally helpfull libraries for working with data.

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

### Pip3 modules
- **tensorflow-gpu**
- **keras**
- **jupyter**
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
