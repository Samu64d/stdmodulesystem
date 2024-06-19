#
# minecraft_world_api:chunk/forceloading/unload
#
# Unload a forceloaded chunk, return a boolean flag indicating success or failure
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Return data
#  boolean flag

# Get chunk center block position
function minecraft_world_api:chunk/pos/get_center_block_pos_from_chunk_pos

# Unload the chunk
execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:chunk/forceloading/unload/unload with storage io:
