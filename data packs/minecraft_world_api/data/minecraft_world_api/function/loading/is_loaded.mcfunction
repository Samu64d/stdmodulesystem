#
# minecraft_world_api:loading/is_loaded
#
# Check if a block position is loaded
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:loading/is_loaded/is_loaded with storage io:
