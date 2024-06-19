#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_see_through
#
# Set the see through
#> Scores
#  @see_through (in): the see through
#> Context
#  @executor: the text display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/set_see_through"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
