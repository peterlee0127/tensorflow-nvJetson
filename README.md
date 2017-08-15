# tensorflow-TX1/TX2
Tensorflow for Nvidia TX1/TX2


## Nvidia TX 1/2 Environment
#### JetPack 3.1 
1. cuDNN 6.0			
2. CUDA 8.0			
3. Python 2.7				

Tensorflow 1.3.0rc aarch64


### Install
```$ sudo pip install tensorflow-1.3.0rc0-cp27-cp27mu-linux_aarch64.whl```

### Output of the test code
```
2017-07-26 17:21:02.457118: E tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:879] could not open file to read NUMA node: /sys/bus/pci/devices/0000:00:00.0/numa_node
Your kernel may have been built without NUMA support.
2017-07-26 17:21:02.457263: I tensorflow/core/common_runtime/gpu/gpu_device.cc:955] Found device 0 with properties:
name: NVIDIA Tegra X2
major: 6 minor: 2 memoryClockRate (GHz) 1.3005
pciBusID 0000:00:00.0
Total memory: 7.67GiB
Free memory: 5.30GiB
2017-07-26 17:21:02.457343: I tensorflow/core/common_runtime/gpu/gpu_device.cc:976] DMA: 0
2017-07-26 17:21:02.457374: I tensorflow/core/common_runtime/gpu/gpu_device.cc:986] 0:   Y
2017-07-26 17:21:02.457407: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1045] Creating TensorFlow device (/gpu:0) -> (device: 0, name: NVIDIA Tegra X2, pci bus id: 0000:00:00.0)
2017-07-26 17:21:02.457448: I tensorflow/core/common_runtime/gpu/gpu_device.cc:657] Could not identify NUMA node of /job:localhost/replica:0/task:0/gpu:0, defaulting to 0.  Your kernel may not have been built with NUMA support.
[[ 22.  28.]
 [ 49.  64.]]
 ```
