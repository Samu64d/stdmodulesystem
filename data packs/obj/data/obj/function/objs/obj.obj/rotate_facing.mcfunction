#
# obj:objs/obj.obj/rotate_facing
#
# Rotate a controlled entity facing a position
#> Storage
#  @position (in): the position
#> Context
#  @executor (in): the object
#> Return void

data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z
function obj:objs/obj.obj/rotate_facing/rotate with storage io:
