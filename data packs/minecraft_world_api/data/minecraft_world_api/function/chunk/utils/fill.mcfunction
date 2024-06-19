#
# minecraft_world_api:chunk/utils/fill
#
# Fill a chunk with a block type
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#  @name (in): the block name
#> Return data
#  boolean flag

# Check if the chunk is loaded
execute unless function minecraft_world_api:chunk/api/is_loaded run return run scoreboard players get ::const FALSE

# Get chunk lower corner block position
function minecraft_world_api:chunk/pos/get_lower_corner_block_pos_from_chunk_pos
execute store result storage io: x0 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z0 int 1.0 run function minecraft_world_api:block_pos/get_z

# Get chunk upper corner block position
function minecraft_world_api:chunk/pos/get_upper_corner_block_pos_from_chunk_pos
execute store result storage io: x1 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z1 int 1.0 run function minecraft_world_api:block_pos/get_z

# Get world minimum build height
execute store result storage io: y0 int 1.0 run function minecraft_world_api:layout/api/get_min_build_height

# Get world maximum build height
execute store result storage io: y1 int 1.0 run function minecraft_world_api:layout/api/get_max_build_height

# Fill the chunk
return run function minecraft_world_api:chunk/utils/fill/fill with storage io:
