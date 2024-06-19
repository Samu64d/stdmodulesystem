#
# minecraft_world_api:block/utils/spread_in_area/gen_next_spread_block_pos
#

# X
scoreboard players operation ::in min = ::minecraft_world_api::block::utils area_min_x
scoreboard players operation ::in max = ::minecraft_world_api::block::utils area_max_x
execute store result score ::in x run function random:rand

# Y
scoreboard players operation ::in min = ::minecraft_world_api::block::utils area_min_y
scoreboard players operation ::in max = ::minecraft_world_api::block::utils area_max_y
execute store result score ::in y run function random:rand

# Z
scoreboard players operation ::in min = ::minecraft_world_api::block::utils area_min_z
scoreboard players operation ::in max = ::minecraft_world_api::block::utils area_max_z
execute store result score ::in z run function random:rand

# Create the block position
function minecraft_world_api:block_pos/new
