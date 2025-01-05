#
# world_handler:ticking_area_chunks_manager/define/define
#

# Declare module
#define score_holder ::world_handler::ticking_area_chunks_manager
#define score_holder ::world_handler::ticking_area_chunks_manager::const

# Define variables
scoreboard objectives add chunk_event_list_length dummy
scoreboard objectives add chunk_events_per_tick dummy
scoreboard objectives add processed_chunk_event_count dummy
scoreboard objectives add event dummy

scoreboard objectives add forceloaded dummy

scoreboard objectives add are_overlapped dummy

# Enumeration
function world_handler:ticking_area_chunks_manager/define/enum_chunk_events
