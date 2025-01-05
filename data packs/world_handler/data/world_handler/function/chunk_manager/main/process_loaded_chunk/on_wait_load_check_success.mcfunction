#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load_check_success
#

# Get the loaded chunk descriptor from the loaded chunk list
execute store result score ::world_handler::chunk_manager temp0 run function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk

# Not loaded chunk
execute if score ::world_handler::chunk_manager temp0 = ::const FALSE run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load_check_success_check_fails

# Loaded chunk
execute if score ::world_handler::chunk_manager temp0 = ::const TRUE run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load_check_success_check_success

# Remove the loaded chunk descriptor from the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/remove_by_chunk
