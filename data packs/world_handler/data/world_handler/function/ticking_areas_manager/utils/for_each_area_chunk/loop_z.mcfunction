#
# world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_z
#

# Create a new chunk descriptor
scoreboard players operation ::in x = ::world_handler::ticking_areas_manager x
scoreboard players operation ::in z = ::world_handler::ticking_areas_manager z
data modify storage io: dimension set from storage world_handler:volatile ticking_areas_manager.temp_dimension2
function world_handler:chunk_descriptor/new

# Call callback function
function world_handler:ticking_areas_manager/utils/for_each_area_chunk/callback with storage io:

scoreboard players add ::world_handler::ticking_areas_manager z 1
execute if score ::world_handler::ticking_areas_manager z <= ::world_handler::ticking_areas_manager z1 run function world_handler:ticking_areas_manager/utils/for_each_area_chunk/loop_z

# Loop
