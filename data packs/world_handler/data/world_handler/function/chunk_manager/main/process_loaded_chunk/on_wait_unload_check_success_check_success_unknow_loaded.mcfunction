#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success_check_success_unknow_loaded
#

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Update the loaded chunk descriptor from the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/update_by_chunk
