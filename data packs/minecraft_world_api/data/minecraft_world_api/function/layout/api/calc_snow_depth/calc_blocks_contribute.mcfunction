#
# minecraft_world_api:layout/api/calc_snow_depth/calc_blocks_contribute
#

# Update block position
function minecraft_world_api:block_pos/down

# Start search
scoreboard players set ::in count_limit -1
scoreboard players operation ::in direction = ::utils::enum_directions DOWN
data modify storage io: callback set value "minecraft_world_api:layout/api/calc_snow_depth/match_handler"
execute store result score ::minecraft_world_api::layout blocks_depth run function minecraft_world_api:block/utils/match_in_column

# Calculate contribute
scoreboard players operation ::minecraft_world_api::layout blocks_depth *= ::int 16
scoreboard players operation ::minecraft_world_api::layout snow_depth += ::minecraft_world_api::layout blocks_depth
