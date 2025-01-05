#
# minecraft_entity_api:display_entity/get_right_rotation
#
# Get the right rotation of a display entity
#> Storage
#  @right_rotation (out): the right rotation
#> Context
#  @executor (in): the display entity
#> Return void

data modify storage io: right_rotation set from entity @s transformation.right_rotation
