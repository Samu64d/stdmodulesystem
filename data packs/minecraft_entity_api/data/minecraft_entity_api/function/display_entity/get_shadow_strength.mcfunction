#
# minecraft_entity_api:display_entity/get_shadow_strength
#
# Get the shadow strength of a display entity
#> Storage
#  @shadow_strength (out): the shadow strength
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: shadow_strength set from entity @s shadow_strength
