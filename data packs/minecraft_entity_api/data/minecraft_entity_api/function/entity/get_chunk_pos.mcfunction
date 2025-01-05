#
# minecraft_entity_api:entity/get_chunk_pos
#
# Get the chunk position of the chunk at which an entity is located
#> Storage
#  @chunk_pos (out): the chunk position
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: vector set from entity @s Pos
execute store result score ::in x run function nmath:vector3d/get_x
execute store result score ::in z run function nmath:vector3d/get_z
function minecraft_world_api:chunk_pos/new
