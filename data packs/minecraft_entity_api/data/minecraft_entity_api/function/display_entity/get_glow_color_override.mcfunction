#
# minecraft_entity_api:display_entity/get_glow_color_override
#
# Get the glow color override of a display entity
#> Context
#  @executor (in): the display entity
#> Return data
#  glow color override value

return run data get entity @s glow_color_override 1.0
