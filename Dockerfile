ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_REPO=qnib
ARG FROM_IMG_NAME=uplain-pip3
ARG FROM_IMG_TAG=2018-12-23.1
ARG FROM_IMG_HASH=""

FROM ${DOCKER_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN pip3 install tensorflow-gpu
RUN python -c 'import tensorflow as tf;hello = tf.constant("Hello, TensorFlow!");sess = tf.Session();print(sess.run(hello))'
RUN echo "python -c 'from tensorflow.python.client import device_lib;device_lib.list_local_devices()'" >> /root/.bash_history
