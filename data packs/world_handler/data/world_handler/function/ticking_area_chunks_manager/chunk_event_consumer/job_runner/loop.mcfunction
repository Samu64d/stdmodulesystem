#
# world_handler:ticking_area_chunks_manager/chunk_event_consumer/job_runner/loop
#

# Get next chunk event list element
function world_handler:ticking_area_chunks_manager/chunk_event_list/next

# Get chunk
function world_handler:ticking_area_chunks_manager/chunk_event_descriptor/get_chunk

# Get event
execute store result score ::world_handler::ticking_area_chunks_manager event run function world_handler:ticking_area_chunks_manager/chunk_event_descriptor/get_event

# Get forceloaded
execute store result score ::in forceloaded run function world_handler:ticking_area_chunks_manager/chunk_event_descriptor/is_forceloaded

# Emit event

# Chunk entered ticking area
execute if score ::world_handler::ticking_area_chunks_manager event = ::world_handler::ticking_area_chunks_manager::enum_chunk_events IN_AREA run function world_handler:events/emitters/on_chunk_entered_ticking_areas

# Chunk exited ticking area
execute if score ::world_handler::ticking_area_chunks_manager event = ::world_handler::ticking_area_chunks_manager::enum_chunk_events OUT_AREA run function world_handler:events/emitters/on_chunk_exited_ticking_areas

scoreboard players add ::world_handler::ticking_area_chunks_manager processed_chunk_event_count 1
execute if score ::world_handler::ticking_area_chunks_manager processed_chunk_event_count < ::world_handler::ticking_area_chunks_manager chunk_events_per_tick run function world_handler:ticking_area_chunks_manager/chunk_event_consumer/job_runner/loop

# Loop
