#
# minecraft_entity_api:display_entity/get_scale
#
# Get the scale of a display entity
#> Storage
#  @scale (out): the scale
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: scale set from entity @s transformation.scale
