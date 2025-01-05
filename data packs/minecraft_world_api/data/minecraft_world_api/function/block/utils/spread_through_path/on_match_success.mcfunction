#
# minecraft_world_api:block/utils/spread_through_path/on_match_success
#

# Check if the block need to be placed
scoreboard players operation ::minecraft_world_api::block::utils temp0 = ::const FALSE
execute if score ::in every_node = ::const TRUE run scoreboard players operation ::minecraft_world_api::block::utils temp0 = ::const TRUE
scoreboard players operation ::minecraft_world_api::block::utils temp1 = ::minecraft_world_api::block::utils spread_attempts
scoreboard players add ::minecraft_world_api::block::utils temp1 1
execute if score ::in every_node = ::const FALSE if score ::minecraft_world_api::block::utils temp1 = ::in attempts_limit run scoreboard players operation ::minecraft_world_api::block::utils temp0 = ::const TRUE

# On check success
execute if score ::minecraft_world_api::block::utils temp0 = ::const TRUE run scoreboard players add ::minecraft_world_api::block::utils spread_count 1
execute if score ::minecraft_world_api::block::utils temp0 = ::const TRUE run function minecraft_world_api:block/api/set_block_at_pos
