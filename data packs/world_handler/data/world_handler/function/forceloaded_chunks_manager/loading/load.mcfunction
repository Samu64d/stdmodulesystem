#
# world_handler:forceloaded_chunks_manager/loading/load
#

# Get chunk descriptor
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk

# Check for success
execute store result score ::world_handler::forceloaded_chunks_manager loading_success run function world_handler:forceload/load

# Add the forceloaded chunk descriptor to the forceloaded chunk map
execute if score ::world_handler::forceloaded_chunks_manager loading_success = ::const TRUE run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/set

# Return data
return run scoreboard players get ::world_handler::forceloaded_chunks_manager loading_success
