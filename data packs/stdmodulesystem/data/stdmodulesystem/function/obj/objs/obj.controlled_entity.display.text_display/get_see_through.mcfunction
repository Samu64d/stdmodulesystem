#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/get_see_through
#
# Get the see through
#> Scores
#  @see_through (out): the see through
#> Context
#  @executor: the text display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/get_see_through"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
