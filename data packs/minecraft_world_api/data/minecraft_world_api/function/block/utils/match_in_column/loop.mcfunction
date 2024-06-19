#
# minecraft_world_api:block/utils/match_in_column/loop
#

# Default success to false
scoreboard players operation ::inout match_success = ::const FALSE

# Check matching
function minecraft_world_api:block/utils/match_in_column/callback with storage io:

# Block doesn't match, stop search
execute if score ::inout match_success = ::const FALSE run return 0

# Offset block position
function minecraft_world_api:block_pos/offset_direction

scoreboard players add ::minecraft_world_api::block::utils match_count 1
execute if score ::minecraft_world_api::block::utils match_count < ::in count_limit run function minecraft_world_api:block/utils/match_in_column/loop

# Loop
