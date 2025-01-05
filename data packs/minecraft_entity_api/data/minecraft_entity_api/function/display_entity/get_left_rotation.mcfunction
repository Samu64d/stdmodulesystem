#
# minecraft_entity_api:display_entity/get_left_rotation
#
# Get the left rotation of a display entity
#> Storage
#  @left_rotation (out): the left rotation
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: left_rotation set from entity @s transformation.left_rotation
