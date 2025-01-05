#
# minecraft_world_api:fluid/api/get_fluid_name_at_pos
#
# Get the name of a fluid at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (out): the fluid name
#> Return void

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
function minecraft_world_api:fluid/api/get_fluid_name_at_pos/get with storage io:
