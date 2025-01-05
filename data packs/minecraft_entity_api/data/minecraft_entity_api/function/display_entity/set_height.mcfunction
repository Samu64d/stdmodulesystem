#
# minecraft_entity_api:display_entity/set_height
#
# Set the height of a display entity
#> Storage
#  @height (in): the height
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s height set from storage io: height
