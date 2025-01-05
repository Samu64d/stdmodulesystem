#
# obj:objs/obj.controlled_text_display_entity/set_see_through
#
# Set the see through of a controlled text display entity
#> Scores
#  @see_through (in): the see through
#> Context
#  @executor (in): the controlled text display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/set_see_through"
function server:selector_entity_list/select_by_string_uuid
