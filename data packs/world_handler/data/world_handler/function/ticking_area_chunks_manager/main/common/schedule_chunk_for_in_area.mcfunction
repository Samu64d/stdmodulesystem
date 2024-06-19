#
# world_handler:ticking_area_chunks_manager/main/common/schedule_chunk_for_in_area
#

# Create chunk event descriptor
scoreboard players operation ::in event = ::world_handler::ticking_area_chunks_manager::enum_chunk_events IN_AREA
function world_handler:ticking_area_chunks_manager/chunk_event_descriptor/new

# Add to the chunk event list
function world_handler:ticking_area_chunks_manager/chunk_event_list/add
