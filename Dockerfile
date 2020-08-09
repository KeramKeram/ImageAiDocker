FROM tensorflow/tensorflow:1.14.0-gpu-py3

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN rm -rf /var/lib/apt/lists/*


RUN pip install matplotlib
RUN pip install pillow
RUN pip install Cython
RUN pip install "git+https://github.com/philferriere/cocoapi.git#egg=pycocotools&subdirectory=PythonAPI"
RUN pip3 install numpy pandas sklearn matplotlib seaborn jupyter pyyaml h5py && \
    pip3 install keras==2.3.0 --no-deps && \
    pip3 install opencv-python && \
    pip3 install imutils && \
    pip3 install imageai

RUN git clone --depth 1 https://github.com/tensorflow/models
WORKDIR models/research

RUN wget -O protobuf.zip https://github.com/protocolbuffers/protobuf/releases/download/v3.8.0-rc1/protoc-3.8.0-rc-1-linux-x86_64.zip
RUN unzip -o protobuf.zip -d /usr/local bin/protoc
RUN rm -f protobuf.zip
RUN /usr/local/bin/protoc object_detection/protos/*.proto --python_out=.

