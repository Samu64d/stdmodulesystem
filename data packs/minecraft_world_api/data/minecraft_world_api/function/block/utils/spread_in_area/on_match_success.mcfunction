#
# minecraft_world_api:block/utils/spread_in_area/on_match_success
#

# Place block
function minecraft_world_api:block/api/set_block_at_pos

# Update count
scoreboard players add ::minecraft_world_api::block::utils spread_count 1

# Check for spread limit
execute if score ::minecraft_world_api::block::utils spread_count >= ::in count_limit run function minecraft_world_api:block/utils/spread_in_area/stop_search
