#
# minecraft_world_api:chunk/utils/clone
#
# Clone a chunk in a destination chunk position. Warning: the source and the destination dimensions need to
# have the same world height values for the copy to succeed
#> Storage
#  @dimension0 (in): the source dimension
#  @chunk_pos0 (in): the source chunk position
#  @dimension1 (in): the destination dimension
#  @chunk_pos1 (in): the destination chunk position 
#> Return data
#  boolean flag

# Check if the source chunk is loaded
data modify storage io: dimension set from storage io: dimension0
data modify storage io: chunk_pos set from storage io: chunk_pos0
execute unless function minecraft_world_api:chunk/api/is_loaded run return run scoreboard players get ::const FALSE

# Check if the destination chunk is loaded
data modify storage io: dimension set from storage io: dimension1
data modify storage io: chunk_pos set from storage io: chunk_pos1
execute unless function minecraft_world_api:chunk/api/is_loaded run return run scoreboard players get ::const FALSE

# Get source chunk lower corner block position
data modify storage io: chunk_pos set from storage io: chunk_pos0
function minecraft_world_api:chunk/pos/get_lower_corner_block_pos_from_chunk_pos
execute store result storage io: x0 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z0 int 1.0 run function minecraft_world_api:block_pos/get_z

# Get source chunk upper corner block position
data modify storage io: chunk_pos set from storage io: chunk_pos0
function minecraft_world_api:chunk/pos/get_upper_corner_block_pos_from_chunk_pos
execute store result storage io: x1 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z1 int 1.0 run function minecraft_world_api:block_pos/get_z

# Get destination chunk lower corner block position
data modify storage io: chunk_pos set from storage io: chunk_pos1
function minecraft_world_api:chunk/pos/get_lower_corner_block_pos_from_chunk_pos
execute store result storage io: x2 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z2 int 1.0 run function minecraft_world_api:block_pos/get_z

# Get world minimum build height
execute store result storage io: y0 int 1.0 run function minecraft_world_api:layout/api/get_min_build_height

# Get world maximum build height
execute store result storage io: y1 int 1.0 run function minecraft_world_api:layout/api/get_max_build_height

# Clone the chunk
return run function minecraft_world_api:chunk/utils/clone/clone with storage io:
