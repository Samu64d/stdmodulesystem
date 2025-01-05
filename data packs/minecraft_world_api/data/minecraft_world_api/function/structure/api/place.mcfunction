#
# minecraft_world_api:structure/api/place
#
# Place a custom structure at a world location
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @name (out): the structure name
#  @rotation (in): the rotation
#  @mirroring (in): the mirroring
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:structure/api/place/place with storage io:
