#
# obj:objs/obj.controlled_display_entity/get_teleport_duration
#
# Get the teleport duration of a controlled display entity
#> Storage
#  @teleport_duration (out): the teleport duration
#> Context
#  @executor (in): the controlled display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:display_entity/get_teleport_duration"
function server:selector_entity_list/select_by_string_uuid

# Return data
return run scoreboard players get ::out callback_results
