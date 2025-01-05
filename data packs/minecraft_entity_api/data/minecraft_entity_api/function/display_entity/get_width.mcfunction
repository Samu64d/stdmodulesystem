#
# minecraft_entity_api:display_entity/get_width
#
# Get the width of a display entity
#> Storage
#  @width (out): the width
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: width set from entity @s width
