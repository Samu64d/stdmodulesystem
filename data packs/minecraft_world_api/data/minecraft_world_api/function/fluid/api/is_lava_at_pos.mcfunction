#
# minecraft_world_api:fluid/api/is_lava_at_pos
#
# Check if a fluid at a world position is lava
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  boolean flag

# Check for lava
data modify storage io: name set value "minecraft:lava"
return run function minecraft_world_api:block/api/is_at_pos
