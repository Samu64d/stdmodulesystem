#
# minecraft_world_api:block/utils/match_in_area/col_y
#

scoreboard players operation ::minecraft_world_api::block::utils z = ::minecraft_world_api::block::utils area_min_z
function minecraft_world_api:block/utils/match_in_area/col_z

scoreboard players add ::minecraft_world_api::block::utils y 1
execute if score ::minecraft_world_api::block::utils y <= ::minecraft_world_api::block::utils area_max_y run function minecraft_world_api:block/utils/match_in_area/col_y

# Loop
