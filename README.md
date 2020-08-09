# ImageAiDocker
This is docker file for [ImageAi](https://github.com/OlafenwaMoses/ImageAI)
It's using gpu, tested on Geforce 1060, ubuntu 20.04 and Cuda 10.1. Additionaly opencv is instaled.
You can find here:

* Tensorflow 1.14.0-gpu(base image)
* Keras 2.3.0
* Python3
* Opencv 4.2.0
* ImageAi 2.1.5

And more.

# Installation

1. Clone repository.
2. Install [nvidia docker support](https://github.com/NVIDIA/nvidia-docker)
3. Go to repo directory. Type:docker build .
4. To run container type:

```
# Runing container on gpu and mounting home to /root/tmp on docker container
docker run --gpus all -it -v /home/PC/:/root/tmp container_id bash
```

