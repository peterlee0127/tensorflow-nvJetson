# tensorflow-nvJetson
TensorFlow for Nvidia Jetson TX1/TX2.   

P.S. I recommend to donwload needed file, not use git clone. Using git clone will download all file in this repository.   

<hr>
Tensorflow 1.7(build with TensorRT) is larger than 100MB. I split the whl file to 2 part. Please use following command to merge file.

### merge file
```$ cat tensorflow-1.7.0-cp27-cp27mu-linux_aarch64.whl.part-* > tensorflow-1.7.0-cp27-cp27mu-linux_aarch64.whl```

### split file
```$  split -b 70m tensorflow-1.7.0-cp27-cp27mu-linux_aarch64.whl tensorflow-1.7.0-cp27-cp27mu-linux_aarch64.whl-part-```

<hr>
## Nvidia Jetson

### JetPack 3.2, TensorFlow 1.7  (Latest)
2018 3/29.  

1. cuDNN 7.0			
2. CUDA 9.0			
3. Python 2.7	

This package build with tensorRT.
		
#### JetPack 3.2, TensorFlow 1.6

1. cuDNN 7.0			
2. CUDA 9.0			
3. Python 2.7	

This package didn't build with tensorRT.

#### JetPack 3.2, TensorFlow 1.5

1. cuDNN 7.0			
2. CUDA 9.0			
3. Python 2.7	

If you had this Memory Error.

```
2018-02-23 16:45:13.345534: W ./tensorflow/core/common_runtime/gpu/pool_allocator.h:195] could not allocate pinned host memory of size: 267264.  
2018-02-23 16:45:13.345585: E tensorflow/stream_executor/cuda/cuda_driver.cc:967] failed to alloc 240640 bytes on host: CUDA_ERROR_UNKNOWN.   
2018-02-23 16:45:13.345634: W ./tensorflow/core/common_runtime/gpu/pool_allocator.h:195] could not allocate pinned host memory of size: 240640.   
2018-02-23 16:45:13.345683: E tensorflow/stream_executor/cuda/cuda_driver.cc:967] failed to alloc 216576 bytes on host: CUDA_ERROR_UNKNOWN.   
```
You can modify your tensorflow program.
It should works.

```
config = tf.ConfigProto()
config.gpu_options.allow_growth = True

session = tf.Session(config=config, ...)
```	


### Install
Tensorflow 1.7.0	    
```$ sudo pip install tensorflow-1.7.0-cp27-cp27mu-linux_aarch64.whl```

Tensorflow 1.6.0   
```$ sudo pip install tensorflow-1.6.0-cp27-cp27mu-linux_aarch64.whl```

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
