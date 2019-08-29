from __future__ import absolute_import, division, print_function, unicode_literals
import tensorflow as tf
print("GPU Available: ", tf.test.is_gpu_available())

#import tensorrt as trt
tf.debugging.set_log_device_placement(True)

# Create some tensors
a = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
b = tf.constant([[1.0, 2.0], [3.0, 4.0], [5.0, 6.0]])
c = tf.matmul(a, b)

print(c)
