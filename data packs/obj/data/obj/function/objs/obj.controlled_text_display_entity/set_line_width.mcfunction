#
# obj:objs/obj.controlled_text_display_entity/set_line_width
#
# Set the line width of a controlled text display entity
#> Scores
#  @line_width (in): the line width
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_line_width"
function server:selector_entity_list/select_by_string_uuid
