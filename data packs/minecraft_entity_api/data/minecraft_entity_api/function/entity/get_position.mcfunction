#
# minecraft_entity_api:entity/get_position
#
# Get the position vector of an entity
#> Storage
#  @position (out): the positon vector
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: position set from entity @s Pos
