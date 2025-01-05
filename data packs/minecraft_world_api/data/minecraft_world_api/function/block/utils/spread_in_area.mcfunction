#
# minecraft_world_api:block/utils/spread_in_area
#
# Spread a block type at random position matching a condition in a world area
#> Scores
#  @attempts_limit (in): the max number of attempts before stop the process
#  @count_limit (in): the max number of blocks to spread before stop the process, set to -1 for disable search limit
#> Storage
#  @dimension (in): the dimension
#  @block_pos0 (in): the area lower northwest corner block position
#  @block_pos1 (in): the area upper southeast corner block position
#  @callback (in): the callback function
#  @name (in): the block name
#> Return data
#  number of placed blocks

# Setup values
scoreboard players set ::minecraft_world_api::block::utils spread_count 0
scoreboard players set ::minecraft_world_api::block::utils spread_attempts 0
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
function minecraft_world_api:block/utils/spread_in_area/loop

# Return data
return run scoreboard players get ::minecraft_world_api::block::utils spread_count
