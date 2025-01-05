#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load_check_success_check_fails
#

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status LOADED
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Add the loaded chunk descriptor to the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/add

# Emit event
function world_handler:events/emitters/on_chunk_loaded
