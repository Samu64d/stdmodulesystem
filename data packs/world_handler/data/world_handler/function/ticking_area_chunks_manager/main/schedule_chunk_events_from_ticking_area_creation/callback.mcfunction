#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_creation/callback
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/push

# Calculate chunk overlapping
function world_handler:ticking_areas_manager/overlapping/calc_chunk_overlapping

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: ticking_area_descriptor"
function stdmodulesystem:stack/pop

# Get forceloaded
execute store result score ::in forceloaded run function world_handler:ticking_areas_manager/ticking_area_descriptor/is_forceloaded

# Check if the chunk is inside only the ticking area
execute if score ::out overlapping_index matches 1 run function world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_in_area
