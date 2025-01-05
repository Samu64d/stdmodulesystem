#
# minecraft_world_api:chunk/api/is_loaded
#
# Check if a chunk is loaded
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Return data
#  boolean flag

# Get chunk center block position
function minecraft_world_api:chunk/pos/get_center_block_pos_from_chunk_pos

# Check if the block position is loaded
return run function minecraft_world_api:loading/is_loaded
