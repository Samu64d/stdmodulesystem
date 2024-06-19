#
# minecraft_world_api:block/utils/match_in_area/on_match_success
#

# Increment count
scoreboard players add ::minecraft_world_api::block::utils match_count 1

# Check for search limit
execute if score ::minecraft_world_api::block::utils match_count >= ::in count_limit run function minecraft_world_api:block/utils/match_in_area/stop_search
