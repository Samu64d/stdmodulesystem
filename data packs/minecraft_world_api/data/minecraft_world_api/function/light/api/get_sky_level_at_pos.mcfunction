#
# minecraft_world_api:light/api/get_sky_level_at_pos
#
# Get the sky light level at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  sky light level

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:light/api/get_sky_level_at_pos/get with storage io:
