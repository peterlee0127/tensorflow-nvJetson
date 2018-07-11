#! /bin/sh
FILE=tensorflow-1.9.0-cp35-cp35m-linux_aarch64.whl
wget https://github.com/peterlee0127/tensorflow-nvJetson/releases/download/binary/$FILE


echo "Please use the Python 3.5"
echo "you can install by 'sudo pip3 install $FILE'"
