#
# world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_x
#

scoreboard players operation ::world_handler::ticking_areas_manager z = ::world_handler::ticking_areas_manager z0
function world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_z

scoreboard players add ::world_handler::ticking_areas_manager x 1
execute if score ::world_handler::ticking_areas_manager x <= ::world_handler::ticking_areas_manager x1 run function world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_x

# Loop
