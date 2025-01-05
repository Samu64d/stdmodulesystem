#
# minecraft_entity_api:display_entity/set_shadow_strength
#
# Set the shadow strength of a display entity
#> Storage
#  @shadow_strength (in): the shadow strength
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s shadow_strength set from storage io: shadow_strength
