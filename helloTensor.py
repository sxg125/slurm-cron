import tensorflow as tf
hello = tf.constant('Hello, TensorFlow!')
sess = tf.Session()
print sess.run(hello)
random_number = tf.random_uniform([2,4,6],minval=0,maxval=100, dtype=tf.int32)
print(sess.run(random_number))
