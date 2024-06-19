#
# world_handler:forceloaded_chunks_manager/loading/unload_not_persistents/callback
#

# Get chunk descriptor
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk

# Check if the forceloaded chunk is persistent
execute unless function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/is_persistent run function world_handler:forceloaded_chunks_manager/loading/unload
