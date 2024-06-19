#
# minecraft_world_api:block/utils/count_in_column
#
# Count the number of stacked blocks of the same type with a descending or ascending order from the starting position
#> Scores
#  @count_limit (in): the max number of blocks to find before stop the search, set to -1 for disable search limit
#  @direction (in): specify the direction for searching (up o down)
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the column start position
#  @name (in): the block name
#> Return data
#  number of founded blocks

# Save data
data modify storage minecraft_world_api:volatile block.utils.temp_name set from storage io: name

# Match in column
data modify storage io: callback set value "minecraft_world_api:block/utils/count_in_column/match_handler"
return run function minecraft_world_api:block/utils/match_in_column
