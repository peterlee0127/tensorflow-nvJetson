#! /bin/sh
FILE=tensorflow-1.8.0-cp27-cp27mu-linux_aarch64.whl
wget https://tfjetson.peterlee0127.com/$FILE-part-1
wget https://tfjetson.peterlee0127.com/$FILE-part-2

cat $FILE-part-* > $FILE

echo "you can install by 'sudo pip install $FILE'"
