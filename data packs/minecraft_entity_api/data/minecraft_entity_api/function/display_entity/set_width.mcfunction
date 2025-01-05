#
# minecraft_entity_api:display_entity/set_width
#
# Set the width of a display entity
#> Storage
#  @width (in): the width
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s width set from storage io: width
