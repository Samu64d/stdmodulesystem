#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/callback_destruction
#

data modify storage io: chunk_descriptor set from storage io: element

# Calculate chunk overlapping
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
function world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping

# Check if the chunk is inside the new ticking area
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
execute store result score ::world_handler::ticking_area_chunks_manager temp1 run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside

# Get forceloaded
execute store result score ::in forceloaded run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded

# Check if the chunk is inside only the ticking area
execute if score ::world_handler::ticking_area_chunks_manager temp1 = ::const FALSE if score ::out overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_out_area
