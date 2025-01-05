#
# minecraft_world_api:block/api/copy
#
# Copy a block from a source position at a destination position
#> Storage
#  @dimension0 (in): the dimension of the source block
#  @block_pos0 (in): the block position of the source block
#  @dimension1 (in): the dimension of the destination block
#  @block_pos1 (in): the block position of the destination block
#> Return data
#  boolean flag

data modify storage io: block_pos set from storage io: block_pos0
execute store result storage io: x0 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y0 int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z0 int 1.0 run function minecraft_world_api:block_pos/get_z
data modify storage io: block_pos set from storage io: block_pos1
execute store result storage io: x1 int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y1 int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z1 int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:block/api/copy/copy with storage io:
