#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/set_right_rotation
#
# Set the right rotation of a display entity
#> Storage
#  @right_rotation (in): the right rotation
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/set_right_rotation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
