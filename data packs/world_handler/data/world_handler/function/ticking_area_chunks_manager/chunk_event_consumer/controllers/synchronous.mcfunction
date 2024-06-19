#
# world_handler:ticking_area_chunks_manager/chunk_event_consumer/controllers/synchronous
#

# Get chunk event list length
execute store result score ::world_handler::ticking_area_chunks_manager chunk_event_list_length run function world_handler:ticking_area_chunks_manager/chunk_event_list/get_count

# Default rate
scoreboard players operation ::world_handler::ticking_area_chunks_manager chunk_events_per_tick = ::world_handler::ticking_area_chunks_manager chunk_event_list_length
