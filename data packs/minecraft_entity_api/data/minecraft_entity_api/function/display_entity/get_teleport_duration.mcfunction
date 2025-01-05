#
# minecraft_entity_api:display_entity/get_teleport_duration
#
# Get the teleport duration in ticks of a display entity
#> Context
#  @executor (in): the display entity
#> Return data
#  number of ticks value

return run data get entity @s teleport_duration 1.0
