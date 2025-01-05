#
# minecraft_world_api:layout/internal/calc_min_build_height/loop
#

# Check if the block position is block loaded
execute store result score ::minecraft_world_api::layout success run function minecraft_world_api:loading/is_block_loaded

# Add contribute
scoreboard players operation ::in y = ::const 2E4
execute if score ::minecraft_world_api::layout success = ::const FALSE run function minecraft_world_api:block_pos/add_y

# Stop search
execute if score ::minecraft_world_api::layout success = ::const TRUE run scoreboard players operation ::minecraft_world_api::layout y = ::minecraft_world_api::layout::const MAX_POSSIBLE_MIN_WORLD_HEIGHT

scoreboard players operation ::minecraft_world_api::layout y += ::const 2E4
execute if score ::minecraft_world_api::layout y < ::minecraft_world_api::layout::const MAX_POSSIBLE_MIN_WORLD_HEIGHT run function minecraft_world_api:layout/internal/calc_min_build_height/loop

# Loop
