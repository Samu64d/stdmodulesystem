#
# minecraft_world_api:layout/internal/calc_max_build_height
#

# Prepare block position
scoreboard players operation ::in y = ::in min_build_height
function minecraft_world_api:block_pos/set_y

# Start loop
scoreboard players operation ::minecraft_world_api::layout y = ::minecraft_world_api::layout::const MAX_POSSIBLE_WORLD_HEIGHT_BIT
function minecraft_world_api:layout/internal/calc_max_build_height/loop

# Get height value
return run function minecraft_world_api:block_pos/get_y
