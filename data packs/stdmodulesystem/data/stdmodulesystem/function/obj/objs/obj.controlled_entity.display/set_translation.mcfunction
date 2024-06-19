#
# stdmodulesystem:obj/objs/obj.controlled_entity.display/set_translation
#
# Set the translation of a display entity
#> Storage
#  @translation (in): the translation
#> Context
#  @executor: the display entity
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display/display/set_translation"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
