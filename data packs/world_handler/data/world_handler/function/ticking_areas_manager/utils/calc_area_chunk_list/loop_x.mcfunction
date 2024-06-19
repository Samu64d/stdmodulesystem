#
# world_handler:ticking_areas_manager/utils/calc_area_chunk_list/loop_x
#

scoreboard players operation ::in z = ::in z0
function world_handler:ticking_areas_manager/utils/calc_area_chunk_list/loop_z

scoreboard players add ::in x 1
execute if score ::in x <= ::in x1 run function world_handler:ticking_areas_manager/utils/calc_area_chunk_list/loop_x

# Loop
