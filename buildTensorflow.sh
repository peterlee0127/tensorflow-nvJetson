#! /bin/sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64 
sudo apt-get install python-numpy python-dev python-pip python-wheel

git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout v1.8.0
git apply ../patch/tensorflow1.8.patch
./configure

bazel build --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package

bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
