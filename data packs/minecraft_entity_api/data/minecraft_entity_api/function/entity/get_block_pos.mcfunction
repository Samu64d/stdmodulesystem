#
# minecraft_entity_api:entity/get_block_pos
#
# Get the block position of the block at which an entity is standing up
#> Storage
#  @block_pos (out): the block position
#> Context
#  @executor (in): the entity
#> Return void

data modify storage io: vector set from entity @s Pos
function minecraft_world_api:block_pos/new_from_vector3d
