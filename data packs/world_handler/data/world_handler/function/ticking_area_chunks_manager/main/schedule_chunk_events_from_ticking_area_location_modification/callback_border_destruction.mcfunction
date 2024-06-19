#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/callback_border_destruction
#

data modify storage io: chunk_descriptor set from storage io: element

# Check if the chunk is inside the old ticking area or the border
scoreboard players operation ::in include_border = ::const FALSE
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
execute store result score ::world_handler::ticking_area_chunks_manager temp0 run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside

# Calculate chunk overlapping
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
function world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping

# Get forceloaded
execute store result score ::in forceloaded run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded

# Check overlapping case

# Check if the chunk is inside only the ticking area
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const TRUE if score ::out overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_out_area

# Check if the chunk is inside only the ticking area but in other ticking areas borders
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const TRUE if score ::out overlapping_index matches 1 if score ::out border_overlapping_index matches 1.. run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_in_area_border

# Check if the chunk is inside only the ticking area border
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const FALSE if score ::out overlapping_index matches 0 if score ::out border_overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_out_area_border
