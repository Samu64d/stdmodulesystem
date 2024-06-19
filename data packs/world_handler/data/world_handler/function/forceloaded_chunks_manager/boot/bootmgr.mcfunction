#
# world_handler:forceloaded_chunks_manager/boot/bootmgr
#

# Load boot configuration
function world_handler:forceloaded_chunks_manager/boot/config

# Check for uninitialized forceloaded chunk map
execute unless function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/is_initialized run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/clear

# Reload all chunks
execute if score ::world_handler::forceloaded_chunks_manager::const CHECK_FORCELOADED_ON_BOOT = ::const TRUE run function world_handler:forceloaded_chunks_manager/loading/reload_all

# Unload not persistent chunks
function world_handler:forceloaded_chunks_manager/loading/unload_not_persistents

# Unload all chunks
execute if score ::world_handler::forceloaded_chunks_manager::const RESET_FORCELOADED_ON_BOOT = ::const TRUE run function world_handler:forceloaded_chunks_manager/main/reset

# Update forceloaded chunk count
execute store result score ::world_handler::forceloaded_chunks_manager forceloaded_chunk_count run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/get_count
