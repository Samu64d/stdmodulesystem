#
# minecraft_entity_api:display_entity/set_start_interpolation
#
# Set the start interpolation in ticks of a display entity
#> Storage
#  @start_interpolation (in): the start interpolation
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile display_entity.temp_value int 1.0 run scoreboard players get ::in start_interpolation

# Set data
return run data modify entity @s start_interpolation set from storage minecraft_entity_api:volatile display_entity.temp_value
