#
# minecraft_world_api:block/utils/match_in_column
#
# Count the number of stacked blocks that match the pattern in the callback function with a descending or ascending order from
# the starting position
#> Scores
#  @count_limit (in): the max number of blocks to find before stop the search, set to -1 for disable search limit
#  @direction (in): specify the direction for searching (up o down)
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the column start position
#  @callback (in): the callback function
#> Return data
#  number of matched blocks

# Setup values
scoreboard players set ::minecraft_world_api::block::utils match_count 0
execute if score ::in count_limit matches -1 run scoreboard players operation ::in count_limit = ::const INT_MAX

# Start search
function minecraft_world_api:block/utils/match_in_column/loop

# Return data
return run scoreboard players get ::minecraft_world_api::block::utils match_count
