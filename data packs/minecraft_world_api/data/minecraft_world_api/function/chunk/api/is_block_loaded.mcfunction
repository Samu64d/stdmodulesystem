#
# minecraft_world_api:chunk/api/is_block_loaded
#
# Check if a chunk is block loaded
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Return data
#  boolean flag

# Get chunk center block position
function minecraft_world_api:chunk/pos/get_center_block_pos_from_chunk_pos

# Get minimum build height
execute store result score ::in y run function minecraft_world_api:layout/api/get_min_build_height
function minecraft_world_api:block_pos/set_y

# Check if the block position is block loaded
return run function minecraft_world_api:loading/is_block_loaded
