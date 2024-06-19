#
# world_handler:ticking_area_chunks_manager/chunk_event_consumer/controllers/asynchronous
#

# Get chunk event list length
execute store result score ::world_handler::ticking_area_chunks_manager chunk_event_list_length run function world_handler:ticking_area_chunks_manager/chunk_event_list/get_count

# Calculate asynchronous rate
scoreboard players operation ::world_handler::ticking_area_chunks_manager temp0 = ::world_handler::ticking_area_chunks_manager::const CHUNK_EVENT_SCHEDULING_ASYNC_RATE
scoreboard players add ::world_handler::ticking_area_chunks_manager temp0 1
scoreboard players operation ::world_handler::ticking_area_chunks_manager chunk_events_per_tick = ::world_handler::ticking_area_chunks_manager temp0
scoreboard players operation ::world_handler::ticking_area_chunks_manager temp0 = ::world_handler::ticking_area_chunks_manager chunk_event_list_length
scoreboard players operation ::world_handler::ticking_area_chunks_manager temp0 *= ::int 2
scoreboard players operation ::world_handler::ticking_area_chunks_manager temp0 /= ::int 100
execute if score ::world_handler::ticking_area_chunks_manager chunk_events_per_tick < ::world_handler::ticking_area_chunks_manager temp0 run scoreboard players operation ::world_handler::ticking_area_chunks_manager chunk_events_per_tick = ::world_handler::ticking_area_chunks_manager temp0

# Check for max limit
execute if score ::world_handler::ticking_area_chunks_manager chunk_events_per_tick > ::world_handler::ticking_area_chunks_manager chunk_event_list_length run scoreboard players operation ::world_handler::ticking_area_chunks_manager chunk_events_per_tick = ::world_handler::ticking_area_chunks_manager chunk_event_list_length
