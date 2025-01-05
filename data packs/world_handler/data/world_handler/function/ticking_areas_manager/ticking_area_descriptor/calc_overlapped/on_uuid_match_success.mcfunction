#
# world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped/on_uuid_match_success
#

# Get first ticking area dimension
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor0
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension
data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension

# Get second ticking dimension
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor1
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_dimension

# Check matching
execute store success score ::world_handler::ticking_areas_manager success run data modify storage world_handler:volatile ticking_areas_manager.temp_dimension set from storage io: dimension
execute store result score ::world_handler::ticking_areas_manager success if score ::world_handler::ticking_areas_manager success = ::const FALSE

# On check success
execute if score ::world_handler::ticking_areas_manager success = ::const TRUE run function world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped/on_dimension_match_success
