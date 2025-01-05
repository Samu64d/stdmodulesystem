#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload
#

# Get chunk
function world_handler:chunk_manager/loaded_chunk_descriptor/get_chunk

# Check for chunk loading
execute if function world_handler:loading/is_chunk_loaded run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success
