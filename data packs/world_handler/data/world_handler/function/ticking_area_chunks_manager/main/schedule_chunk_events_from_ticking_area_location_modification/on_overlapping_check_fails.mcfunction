#
# world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification/on_overlapping_check_fails
#

# Out area chunks

# Schedule the chunk event list
data modify storage io: ticking_area_descriptor set from storage io: old_ticking_area_descriptor
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction

# In area chunks

# Schedule the chunk event list
data modify storage io: ticking_area_descriptor set from storage io: new_ticking_area_descriptor
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_creation
