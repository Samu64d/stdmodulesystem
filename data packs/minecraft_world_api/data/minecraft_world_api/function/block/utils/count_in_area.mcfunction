#
# minecraft_world_api:block/utils/count_in_area
#
# Count the number of blocks of a block type in a world area
#> Scores
#  @count_limit (in): the max number of blocks to find before stop the search, set to -1 for disable search limit
#> Storage
#  @dimension (in): the dimension
#  @block_pos0 (in): the area lower northwest corner block position
#  @block_pos1 (in): the area upper southeast corner block position
#  @name (in): the block name
#> Return data
#  number of matched blocks

# Save data
data modify storage minecraft_world_api:volatile block.utils.temp_name set from storage io: name

# Match in area
data modify storage io: callback set value "minecraft_world_api:block/utils/count_in_area/match_handler"
return run function minecraft_world_api:block/utils/match_in_area
