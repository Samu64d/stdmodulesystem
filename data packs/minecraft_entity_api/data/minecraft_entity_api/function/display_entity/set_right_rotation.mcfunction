#
# minecraft_entity_api:display_entity/set_right_rotation
#
# Set the right rotation of a display entity
#> Storage
#  @right_rotation (in): the right rotation
#> Context
#  @executor (in): the display entity
#> Return data
#  boolean flag

return run data modify entity @s transformation.right_rotation set from storage io: right_rotation
