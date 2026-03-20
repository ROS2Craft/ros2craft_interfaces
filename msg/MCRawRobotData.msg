# General raw robot status from MC world
# Minecraft uses Y UP Z SOUTH coordinate frame!!!

string frame_id

#Position in blocks w.r.t frame_id
geometry_msgs/Vector3 position

#Orientation in degrees RPY w.r.t frame_id 
geometry_msgs/Vector3 orientation

#Velocity in blocks/second w.r.t frame_id
geometry_msgs/Vector3 velocity