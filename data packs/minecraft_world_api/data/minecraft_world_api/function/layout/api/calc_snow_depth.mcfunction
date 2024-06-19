#
# minecraft_world_api:layout/api/calc_snow_depth
#
# Calculate the snow depth value starting at a block position
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#> Return data
#  snow depth value

scoreboard players set ::minecraft_world_api::layout snow_depth 0

# Check if the first block is a snow layer
data modify storage io: name set value "minecraft:snow"
execute if function minecraft_world_api:block/api/is_at_pos run function minecraft_world_api:layout/api/calc_snow_depth/calc_layer_contribute

# Check if the first block is a snow block
data modify storage io: name set value "minecraft:snow_block"
execute if function minecraft_world_api:block/api/is_at_pos run scoreboard players operation ::minecraft_world_api::layout snow_depth += ::int 16

# Check for below blocks contribute
execute if score ::minecraft_world_api::layout snow_depth matches 1.. run function minecraft_world_api:layout/api/calc_snow_depth/calc_blocks_contribute

# Return data
return run scoreboard players get ::minecraft_world_api::layout snow_depth
