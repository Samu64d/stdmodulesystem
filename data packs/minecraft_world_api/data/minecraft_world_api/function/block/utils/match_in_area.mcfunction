#
# minecraft_world_api:block/utils/match_in_area
#
# Count the number of blocks that match the pattern in the callback function in a world area
#> Scores
#  @count_limit (in): the max number of blocks to find before stop the search, set to -1 for disable search limit
#> Storage
#  @dimension (in): the dimension
#  @block_pos0 (in): the area lower northwest corner block position
#  @block_pos1 (in): the area upper southeast corner block position
#  @callback (in): the callback function
#> Return data
#  number of matched blocks

# Setup values
scoreboard players set ::minecraft_world_api::block::utils match_count 0
execute if score ::in count_limit matches -1 run scoreboard players operation ::in count_limit = ::const INT_MAX

# Get lower northwest corner
data modify storage io: block_pos set from storage io: block_pos0
execute store result score ::minecraft_world_api::block::utils area_min_x run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api::block::utils area_min_y run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api::block::utils area_min_z run function minecraft_world_api:block_pos/get_z

# Get upper southeast corner
data modify storage io: block_pos set from storage io: block_pos1
execute store result score ::minecraft_world_api::block::utils area_max_x run function minecraft_world_api:block_pos/get_x
execute store result score ::minecraft_world_api::block::utils area_max_y run function minecraft_world_api:block_pos/get_y
execute store result score ::minecraft_world_api::block::utils area_max_z run function minecraft_world_api:block_pos/get_z

# Start search
scoreboard players operation ::minecraft_world_api::block::utils x = ::minecraft_world_api::block::utils area_min_x
function minecraft_world_api:block/utils/match_in_area/col_x

# Return data
return run scoreboard players get ::minecraft_world_api::block::utils match_count
