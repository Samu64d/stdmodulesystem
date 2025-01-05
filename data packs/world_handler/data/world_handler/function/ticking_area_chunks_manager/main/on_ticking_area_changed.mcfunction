#
# world_handler:ticking_area_chunks_manager/main/on_ticking_area_changed
#

# Out area chunks

# Schedule the ticking area chunk events
data modify storage io: ticking_area_descriptor set from storage io: data.old_ticking_area_descriptor
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction

# In area chunks

# Get ticking area descriptor
data modify storage io: uuid set from storage io: data.uuid
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Schedule the ticking area chunk events
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_creation
