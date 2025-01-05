#
# minecraft_entity_api:display_entity/get_billboard
#
# Get the billboard of a display entity
#> Storage
#  @billboard (out): the billboard
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: billboard set from entity @s billboard
