#
# minecraft_world_api:layout/internal/calc_min_build_height
#

# Prepare block position
scoreboard players operation ::in y = ::minecraft_world_api::layout::const MIN_POSSIBLE_MIN_WORLD_HEIGHT
function minecraft_world_api:block_pos/set_y

# Start loop
scoreboard players operation ::minecraft_world_api::layout y = ::minecraft_world_api::layout::const MIN_POSSIBLE_MIN_WORLD_HEIGHT
function minecraft_world_api:layout/internal/calc_min_build_height/loop

# Get height value
return run function minecraft_world_api:block_pos/get_y
