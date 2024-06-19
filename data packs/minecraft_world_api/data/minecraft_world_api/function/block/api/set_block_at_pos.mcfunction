#
# minecraft_world_api:block/api/set_block_at_pos
#
# Set the block at a world position. This will cause a local block update
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (in): the block name
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:block/api/set_block_at_pos/set with storage io:
