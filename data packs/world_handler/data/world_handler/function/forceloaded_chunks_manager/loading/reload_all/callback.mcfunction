#
# world_handler:forceloaded_chunks_manager/loading/reload_all/callback
#

# Get chunk descriptor
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk

# Check if the chunk is loaded
execute unless function world_handler:forceload/is_loaded run function world_handler:forceloaded_chunks_manager/loading/reload_all/reload
