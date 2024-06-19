#
# minecraft_entity_api:entity/get_rotation
#
# Get the rotation vector of an entity
#> Storage
#  @rotation (out): the rotation vector
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: rotation set from entity @s Rotation
