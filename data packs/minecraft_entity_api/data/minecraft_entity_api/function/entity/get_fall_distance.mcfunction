#
# minecraft_entity_api:entity/get_fall_distance
#
# Get the distance an entity has fallen
#> Storage
#  @fall_distance (out): the fall distance
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: fall_distance set from entity @s FallDistance
