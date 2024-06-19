#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/set_left_rotation
#
# Set the left rotation of a display entity
#> Storage
#  @left_rotation (in): the left rotation
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/set_left_rotation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
