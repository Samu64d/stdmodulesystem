#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/set_scale
#
# Set the scale of a display entity
#> Storage
#  @scale (in): the scale
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/set_scale"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
