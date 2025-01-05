#
# minecraft_world_api:layout/heightmap/get_motion_blocking_level
#
# Get the y position of the first block of a chunk column that blocks motion
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (in): the block name
#> Return data
#  y position value

# Set default position to 0
scoreboard players set ::in y 0
function minecraft_world_api:block_pos/set_y

# Get level value
execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
function minecraft_world_api:layout/heightmap/get_motion_blocking_level/get with storage io:

# Return data
return run function minecraft_world_api:block_pos/get_y
