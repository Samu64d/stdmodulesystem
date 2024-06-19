#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_default_background
#
# Set the default background
#> Scores
#  @default_background (in): the default background
#> Context
#  @executor: the text display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/set_default_background"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
