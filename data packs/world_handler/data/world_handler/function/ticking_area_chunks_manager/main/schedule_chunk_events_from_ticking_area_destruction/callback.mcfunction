#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction/callback
#

# Check if the chunk is inside the ticking area or the border
scoreboard players operation ::in include_border = ::const FALSE
execute store result score ::world_handler::ticking_area_chunks_manager temp0 run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_chunk_inside

# Push the element onto the stack
data modify storage io: stack_element_ref set value "io: ticking_area_descriptor"
function stdmodulesystem:stack/push

# Calculate chunk overlapping
function world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping

# Pop the element from the stack
data modify storage io: stack_element_ref set value "io: ticking_area_descriptor"
function stdmodulesystem:stack/pop

# Get forceloaded
execute store result score ::in forceloaded run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded

# Check overlapping case

# Check if the chunk is inside only the ticking area
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const TRUE if score ::out overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_out_area

# Check if the chunk is inside only the ticking area but in other ticking areas borders
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const TRUE if score ::out overlapping_index matches 1 if score ::out border_overlapping_index matches 1.. run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_in_area_border

# Check if the chunk is inside only the ticking area border
execute if score ::world_handler::ticking_area_chunks_manager temp0 = ::const FALSE if score ::out overlapping_index matches 0 if score ::out border_overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_out_area_border
