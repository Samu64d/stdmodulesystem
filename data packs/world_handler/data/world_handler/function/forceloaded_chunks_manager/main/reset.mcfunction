#
# world_handler:forceloaded_chunks_manager/main/reset
#

# Unload all forceloaded chunks
function world_handler:forceloaded_chunks_manager/loading/unload_all

# Wipe data
function world_handler:forceloaded_chunks_manager/cache/wipe_data

# Reset counter
scoreboard players set ::world_handler::forceloaded_chunks_manager forceloaded_chunk_count 0
