#
# minecraft_entity_api:display_entity/get_shadow_radius
#
# Get the shadow radius of a display entity
#> Storage
#  @shadow_radius (out): the shadow radius
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: shadow_radius set from entity @s shadow_radius
