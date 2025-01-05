#
# obj:objs/obj.controlled_entity/teleport/on_entity
#

data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z
function obj:objs/obj.controlled_entity/teleport/teleport with storage io:
