#
# stdmodulesystem:obj/obj_runtime/get_rotation
#

data modify storage io: rotation set value [0.0d, 0.0d]
data modify storage io: rotation[0] set from entity @s Rotation[0]
data modify storage io: rotation[1] set from entity @s Rotation[1]
