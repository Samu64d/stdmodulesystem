#
# minecraft_entity_api:entity/get_motion
#
# Get motion vector of an entity
#> Storage
#  @motion (out): the motion vector
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: motion set from entity @s Motion
