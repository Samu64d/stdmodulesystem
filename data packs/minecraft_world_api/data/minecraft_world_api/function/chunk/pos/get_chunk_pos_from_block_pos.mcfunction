#
# minecraft_world_api:chunk/pos/get_chunk_pos_from_block_pos
#
# Get the chunk position of the chunk localized at the block position
#> Storage
#  @block_pos (in): the block position
#  @chunk_pos (out): the chunk position
#> Return void

# Get values
execute store result score ::in x run function minecraft_world_api:block_pos/get_x
execute store result score ::in z run function minecraft_world_api:block_pos/get_z

# X
scoreboard players operation ::in x /= ::minecraft_world_api::chunk::const CHUNK_X_SIZE

# Z
scoreboard players operation ::in z /= ::minecraft_world_api::chunk::const CHUNK_Z_SIZE

# Create chunk position
function minecraft_world_api:chunk_pos/new
