#
# world_handler:ticking_area_chunks_manager/main/on_ticking_area_removed
#

# Schedule the ticking area chunk events
data modify storage io: ticking_area_descriptor set from storage io: data.old_ticking_area_descriptor
function world_handler:ticking_area_chunks_manager/main/schedule_chunk_events_from_ticking_area_destruction
