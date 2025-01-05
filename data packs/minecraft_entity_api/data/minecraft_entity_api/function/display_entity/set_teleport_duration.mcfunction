#
# minecraft_entity_api:display_entity/set_teleport_duration
#
# Set the teleport duration in ticks of a display entity
#> Storage
#  @teleport_duration (in): the teleport duration
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile display_entity.temp_value int 1.0 run scoreboard players get ::in teleport_duration

# Set data
return run data modify entity @s teleport_duration set from storage minecraft_entity_api:volatile display_entity.temp_value
