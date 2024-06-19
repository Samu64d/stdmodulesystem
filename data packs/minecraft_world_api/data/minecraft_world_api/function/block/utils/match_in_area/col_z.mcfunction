#
# minecraft_world_api:block/utils/match_in_area/col_z
#

# Default success to false
scoreboard players operation ::inout match_success = ::const FALSE

# Create the block position
scoreboard players operation ::in x = ::minecraft_world_api::block::utils x
scoreboard players operation ::in y = ::minecraft_world_api::block::utils y
scoreboard players operation ::in z = ::minecraft_world_api::block::utils z
function minecraft_world_api:block_pos/new

# Call callback function
function minecraft_world_api:block/utils/match_in_area/callback with storage io:

# On success
execute if score ::inout match_success = ::const TRUE run function minecraft_world_api:block/utils/match_in_area/on_match_success

scoreboard players add ::minecraft_world_api::block::utils z 1
execute if score ::minecraft_world_api::block::utils z <= ::minecraft_world_api::block::utils area_max_z run function minecraft_world_api:block/utils/match_in_area/col_z

# Loop
