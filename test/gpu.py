import tensorflow as tf
#import tensorrt as trt

# Creates a graph.
a = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[2, 3], name='a')
b = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[3, 2], name='b')
c = tf.matmul(a, b)
# Creates a session with log_device_placement set to True.
config = tf.ConfigProto()
config.log_device_placement=True
config.gpu_options.allow_growth = True
#config.gpu_options.allow_growth = True
sess = tf.Session(config=config)
# Runs the op.
print(sess.run(c))
