#
# obj:objs/obj.controlled_entity/rotate_facing
#
# Rotate a controlled entity facing a position
#> Storage
#  @position (in): the position
#> Context
#  @executor (in): the controlled entity
#> Return void

# Super
function obj:objs/obj.obj/rotate_facing

# Update controlled entity
data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "obj:objs/obj.controlled_entity/rotate_facing/on_entity"
data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z
function server:selector_entity_list/select_by_string_uuid
