#
# minecraft_entity_api:display_entity/get_height
#
# Get the height of a display entity
#> Storage
#  @height (out): the height
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: height set from entity @s height
