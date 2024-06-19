#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/get_translation
#
# Get the translation of a display entity
#> Storage
#  @translation (out): the translation
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/get_translation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
