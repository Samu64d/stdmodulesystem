#
# world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped/on_dimension_match_success
#

# Get first ticking area bounding box
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor0
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
data modify storage io: bounding_box0 set from storage io: bounding_box

# Get second ticking area bounding box
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor1
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_bounding_box
data modify storage io: bounding_box1 set from storage io: bounding_box

# Check if the two bounding boxes are overlapped
execute store result score ::world_handler::ticking_areas_manager are_overlapped run function utils:bounding_box2di/are_overlapped
