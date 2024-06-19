#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/get_scale
#
# Get the scale of a display entity
#> Storage
#  @scale (out): the scale
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/get_scale"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
