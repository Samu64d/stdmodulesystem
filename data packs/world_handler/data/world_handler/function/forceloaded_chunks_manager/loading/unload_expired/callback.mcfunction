#
# world_handler:forceloaded_chunks_manager/loading/unload_expired/callback
#

# Get chunk descriptor
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk

# Check if the forceloaded chunk is expired
execute if function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/is_expired run function world_handler:forceloaded_chunks_manager/loading/unload

# Check for updating new expire time
execute unless function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/is_expired run function world_handler:forceloaded_chunks_manager/loading/unload_expired/update_new_expire_time
