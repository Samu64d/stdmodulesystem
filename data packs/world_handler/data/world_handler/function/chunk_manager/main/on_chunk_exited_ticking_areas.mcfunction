#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas
#

# Get event data
execute store result score ::world_handler::chunk_manager forceloaded run data get storage io: data.forceloaded 1.0
data modify storage io: chunk_descriptor set from storage io: data.chunk

# Not forceloaded chunk
execute if score ::world_handler::chunk_manager forceloaded = ::const FALSE run function world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_not_forceloaded

# Forceloaded chunk
execute if score ::world_handler::chunk_manager forceloaded = ::const TRUE run function world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded

# Set last event time
execute store result score ::world_handler::chunk_manager last_event_time run function server:api/get_session_time
