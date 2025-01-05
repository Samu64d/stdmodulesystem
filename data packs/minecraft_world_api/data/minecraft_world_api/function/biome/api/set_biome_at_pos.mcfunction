#
# minecraft_world_api:biome/api/set_biome_at_pos
#
# Set the biome at a world position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (in): the biome name
#> Return void

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
function minecraft_world_api:biome/api/set_biome_at_pos/set with storage io:
