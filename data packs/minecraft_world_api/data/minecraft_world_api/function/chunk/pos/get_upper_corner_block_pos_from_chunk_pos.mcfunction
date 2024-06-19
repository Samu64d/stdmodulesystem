#
# minecraft_world_api:chunk/pos/get_upper_corner_block_pos_from_chunk_pos
#
# Get the upper corner block position of the chunk localized at the block position
#> Storage
#  @chunk_pos (in): the chunk position
#  @block_pos (out): the block position
#> Return void

# Get values
execute store result score ::in x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::in z run function minecraft_world_api:chunk_pos/get_z

# X
scoreboard players operation ::in x *= ::minecraft_world_api::chunk::const CHUNK_X_SIZE
scoreboard players operation ::in x += ::minecraft_world_api::chunk::const CHUNK_X_SIZE
scoreboard players remove ::in x 1

# Y
scoreboard players set ::in y 0

# Z
scoreboard players operation ::in z *= ::minecraft_world_api::chunk::const CHUNK_Z_SIZE
scoreboard players operation ::in z += ::minecraft_world_api::chunk::const CHUNK_Z_SIZE
scoreboard players remove ::in z 1

# Create block position
function minecraft_world_api:block_pos/new
