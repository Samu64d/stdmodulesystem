#
# world_handler:forceloaded_chunks_manager/main/main
#

# Reload all chunks
execute if score ::world_handler::forceloaded_chunks_manager::const CHECK_FORCELOADED_ON_TICK = ::const TRUE run function world_handler:forceloaded_chunks_manager/loading/reload_all

# Check for expired chunks
function world_handler:forceloaded_chunks_manager/loading/unload_expired

# Update forceloaded chunk count
execute store result score ::world_handler::forceloaded_chunks_manager forceloaded_chunk_count run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/get_count
