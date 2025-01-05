#
# minecraft_entity_api:display_entity/set_billboard
#
# Set the billboard of a display entity
#> Storage
#  @billboard (in): the billboard
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s billboard set from storage io: billboard
