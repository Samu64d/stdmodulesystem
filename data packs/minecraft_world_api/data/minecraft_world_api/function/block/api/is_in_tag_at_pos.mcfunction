#
# minecraft_world_api:block/api/is_in_tag_at_pos
#
# Check if a block type is in a block tag
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @tag (out): the tag name
#> Return data
#  boolean flag

execute store result storage io: x int 1.0 run function minecraft_world_api:block_pos/get_x
execute store result storage io: y int 1.0 run function minecraft_world_api:block_pos/get_y
execute store result storage io: z int 1.0 run function minecraft_world_api:block_pos/get_z
return run function minecraft_world_api:block/api/is_in_tag_at_pos/check with storage io:
