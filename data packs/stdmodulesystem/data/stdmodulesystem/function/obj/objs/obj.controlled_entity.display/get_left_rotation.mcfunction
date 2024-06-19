#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/get_left_rotation
#
# Get the left rotation of a display entity
#> Storage
#  @left_rotation (out): the left rotation
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/get_left_rotation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
