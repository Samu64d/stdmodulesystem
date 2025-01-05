#
# obj:objs/obj.controlled_text_display_entity/get_background
#
# Get the background of a controlled text display entity
#> Context
#  @executor (in): the controlled text display entity
#> Return data
#  background value

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:text_display_entity/get_background"
function server:selector_entity_list/select_by_string_uuid

# Return data
return run scoreboard players get ::out callback_results
