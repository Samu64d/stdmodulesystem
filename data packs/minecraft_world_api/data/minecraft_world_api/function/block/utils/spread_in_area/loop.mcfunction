#
# minecraft_world_api:block/utils/spread_in_area/loop
#

# Generate the block position
function minecraft_world_api:block/utils/spread_in_area/gen_next_spread_block_pos

# Call callback function
function minecraft_world_api:block/utils/spread_in_area/callback with storage io:

scoreboard players add ::minecraft_world_api::block::utils spread_attempts 1
execute if score ::minecraft_world_api::block::utils spread_attempts < ::in attempts_limit run function minecraft_world_api:block/utils/spread_in_area/loop

# Loop
