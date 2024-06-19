#
# stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/set_line_width
#
# Set the line width
#> Scores
#  @line_width (in): the line width
#> Context
#  @executor: the text display
#> Return void

data modify storage io: callback set value "stdmodulesystem:obj/objs/obj.controlled_entity.display.text_display/text_display_entity/set_line_width"
data modify storage io: pointer set from entity @s data.controlled_entity
function stdmodulesystem:obj/obj_runtime/bind_entity
