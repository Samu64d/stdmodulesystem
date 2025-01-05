#
# minecraft_entity_api:display_entity/set_glow_color_override
#
# Set the glow color override of a display entity
#> Storage
#  @glow_color_override (in): the glow color override
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile display_entity.temp_value int 1.0 run scoreboard players get ::in glow_color_override

# Set data
return run data modify entity @s glow_color_override set from storage minecraft_entity_api:volatile display_entity.temp_value
