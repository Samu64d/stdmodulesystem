#
# obj:objs/obj.controlled_text_display_entity/set_text_opacity
#
# Set the text opacity of a controlled text display entity
#> Scores
#  @text_opacity (in): the text opacity
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_text_opacity"
function server:selector_entity_list/select_by_string_uuid
