#
# minecraft_entity_api:display_entity/set_scale
#
# Set the scale of a display entity
#> Storage
#  @scale (in): the scale
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s transformation.scale set from storage io: scale
