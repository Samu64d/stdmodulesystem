#
# minecraft_world_api:block/utils/match_in_area/col_x
#

scoreboard players operation ::minecraft_world_api::block::utils y = ::minecraft_world_api::block::utils area_min_y
function minecraft_world_api:block/utils/match_in_area/col_y

scoreboard players add ::minecraft_world_api::block::utils x 1
execute if score ::minecraft_world_api::block::utils x <= ::minecraft_world_api::block::utils area_max_x run function minecraft_world_api:block/utils/match_in_area/col_x

# Loop
