#
# minecraft_world_api:layout/internal/calc_max_build_height/loop
#

# Check if the block position is block loaded
execute store result score ::minecraft_world_api::layout success run function minecraft_world_api:loading/is_block_loaded

# Add contribute
scoreboard players operation ::in y = ::minecraft_world_api::layout y
execute if score ::minecraft_world_api::layout success = ::const FALSE run function minecraft_world_api:block_pos/sub_y
execute if score ::minecraft_world_api::layout success = ::const TRUE run function minecraft_world_api:block_pos/add_y

scoreboard players operation ::minecraft_world_api::layout y /= ::const 2E1
execute if score ::minecraft_world_api::layout y >= ::const 2E0 run function minecraft_world_api:layout/internal/calc_max_build_height/loop

# Loop
