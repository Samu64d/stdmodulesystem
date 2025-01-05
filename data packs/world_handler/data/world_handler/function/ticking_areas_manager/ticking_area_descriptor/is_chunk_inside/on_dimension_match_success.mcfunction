#
# world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside/on_dimension_match_success
#

# Get chunk position
function world_handler:chunk_descriptor/get_chunk_pos_as_values

# Get ticking area bounding box
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box

# Check using bounding box
scoreboard players operation ::in x = ::out x
scoreboard players operation ::in z = ::out z
execute store result score ::world_handler::ticking_areas_manager is_chunk_inside run function utils:bounding_box2di/is_point_inside
