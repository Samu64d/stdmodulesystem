#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success
#

# Check for already loaded chunk
execute if function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success_check_success

# Forceloading
function world_handler:forceloaded_chunks_manager/api/unload

# Remove the loaded chunk descriptor from the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/remove_by_chunk
