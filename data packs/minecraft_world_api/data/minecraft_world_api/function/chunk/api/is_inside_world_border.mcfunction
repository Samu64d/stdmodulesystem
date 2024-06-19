#
# minecraft_world_api:chunk/api/is_inside_world_border
#
# Check if a chunk is inside the world border
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Return data
#  boolean flag

# Get chunk upper corner block position
function minecraft_world_api:chunk/pos/get_lower_corner_block_pos_from_chunk_pos

# Check if the position is inside the worldboder
execute unless function minecraft_world_api:worldborder/api/is_block_pos_inside run return run scoreboard players get ::const FALSE

# Get chunk lower corner block position
function minecraft_world_api:chunk/pos/get_upper_corner_block_pos_from_chunk_pos

# Check if the position is inside the worldboder
execute unless function minecraft_world_api:worldborder/api/is_block_pos_inside run return run scoreboard players get ::const FALSE

# Return data
return run scoreboard players get ::const TRUE
