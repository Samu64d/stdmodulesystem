#
# minecraft_entity_api:display_entity/set_left_rotation
#
# Set the left rotation of a display entity
#> Storage
#  @left_rotation (in): the left rotation
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s transformation.left_rotation set from storage io: left_rotation
