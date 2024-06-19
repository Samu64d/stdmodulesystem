#
# minecraft_world_api:layout/heightmap/get_motion_blocking_no_leaves_level
#
# Get the y position of the first block of a chunk column, excluding leaves, that blocks motion
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (in): the block name
#> Return data
#  y position value

data modify storage io: position set value [I; 0, 0, 0]
execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
function minecraft_world_api:layout/heightmap/get_motion_blocking_no_leaves_level/get with storage io:
return run data get storage io: position[1] 1.0
