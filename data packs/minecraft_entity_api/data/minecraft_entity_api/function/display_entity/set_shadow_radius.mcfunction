#
# minecraft_entity_api:display_entity/set_shadow_radius
#
# Set the shadow radius of a display entity
#> Storage
#  @shadow_radius (in): the shadow radius
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s shadow_radius set from storage io: shadow_radius
