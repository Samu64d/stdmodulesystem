#
# world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping/callback
#

# Get the ticking area descriptor
data modify storage io: uuid set from storage io: element
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Check for forceloading
execute store result score ::world_handler::ticking_areas_manager temp0 run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded
execute unless score ::world_handler::ticking_areas_manager forceloaded = ::world_handler::ticking_areas_manager temp0 run return 0

# Check if the chunk is inside the ticking area
execute if function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside run scoreboard players add ::out overlapping_index 1
