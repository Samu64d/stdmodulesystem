#
# minecraft_entity_api:display_entity/set_brightness
#
# Set the brightness of a display entity
#> Storage
#  @brightness (in): the brightness
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s brightness set from storage io: brightness
