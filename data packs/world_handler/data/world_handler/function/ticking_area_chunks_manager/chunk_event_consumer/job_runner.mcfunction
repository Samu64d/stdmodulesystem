#
# world_handler:ticking_area_chunks_manager/chunk_event_consumer/job_runner
#

# Start loop
scoreboard players set ::world_handler::ticking_area_chunks_manager processed_chunk_event_count 0
execute if score ::world_handler::ticking_area_chunks_manager chunk_events_per_tick matches 1.. run function world_handler:ticking_area_chunks_manager/chunk_event_consumer/job_runner/loop
