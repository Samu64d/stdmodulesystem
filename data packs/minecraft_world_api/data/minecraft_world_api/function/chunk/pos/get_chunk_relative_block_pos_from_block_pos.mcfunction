#
# minecraft_world_api:chunk/pos/get_chunk_relative_block_pos_from_block_pos
#
# Get the chunk relative block position from a block position
#> Storage
#  @block_pos (inout): the block position
#> Return void

# Get values
execute store result score ::in x run function minecraft_world_api:block_pos/get_x
execute store result score ::in z run function minecraft_world_api:block_pos/get_z

# X
scoreboard players operation ::in x %= ::minecraft_world_api::chunk::const CHUNK_X_SIZE

# Z
scoreboard players operation ::in z %= ::minecraft_world_api::chunk::const CHUNK_Z_SIZE

# Set values
function minecraft_world_api:block_pos/set_x
function minecraft_world_api:block_pos/set_z
