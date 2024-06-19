#
# world_handler:forceloaded_chunks_manager/loading/unload
#

# Check for success
execute store result score ::world_handler::forceloaded_chunks_manager unloading_success run function world_handler:forceload/unload

# Remove the forceloaded chunk descriptor from the forceloaded chunk map
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/remove_by_chunk

# Return data
return run scoreboard players get ::world_handler::forceloaded_chunks_manager unloading_success
