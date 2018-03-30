#! /bin/sh
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update && sudo apt-get install  build-essential python zip oracle-java8-installer

mkdir bazel
cd bazel

bazel_version="0.11.1"
wget https://github.com/bazelbuild/bazel/releases/download/$bazel_version/bazel-$bazel_version-dist.zip

unzip bazel-$bazel_version-dist.zip
./compile.sh

sudo cp output/bazel /usr/local/bin

