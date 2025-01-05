#
# minecraft_entity_api:display_entity/set_interpolation_duration
#
# Set the interpolation duration in ticks of a display entity
#> Storage
#  @interpolation_duration (in): the interpolation duration
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile display_entity.temp_value int 1.0 run scoreboard players get ::in interpolation_duration

# Set data
return run data modify entity @s interpolation_duration set from storage minecraft_entity_api:volatile display_entity.temp_value
