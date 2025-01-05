#
# obj:objs/obj.controlled_text_display_entity/set_background
#
# Set the background of a controlled text display entity
#> Scores
#  @background (in): the background
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_background"
function server:selector_entity_list/select_by_string_uuid
