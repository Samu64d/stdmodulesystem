#
# world_handler:ticking_area_chunks_manager/main/on_ticking_area_location_changed
#

# Get ticking area descriptor
data modify storage io: uuid set from storage io: data.uuid
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Schedule the ticking area chunk events
data modify storage io: old_ticking_area_descriptor set from storage io: data.old_ticking_area_descriptor
data modify storage io: new_ticking_area_descriptor set from storage io: ticking_area_descriptor
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_location_modification
