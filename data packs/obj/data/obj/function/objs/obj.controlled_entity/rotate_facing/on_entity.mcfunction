#
# obj:objs/obj.controlled_entity/rotate_facing/on_entity
#

data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z
function obj:objs/obj.controlled_entity/rotate_facing/rotate with storage io:
