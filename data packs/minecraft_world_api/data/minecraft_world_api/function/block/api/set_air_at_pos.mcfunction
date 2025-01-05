#
# minecraft_world_api:block/api/set_air_at_pos
#
# Set the air block at a world position. This will cause a local block update
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

data modify storage io: name set value "minecraft:air"
return run function minecraft_world_api:block/api/set_block_at_pos
