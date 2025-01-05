#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load_check_success_check_success
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# Return if status is not unknow
execute unless score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW run return 0

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Update the loaded chunk descriptor from the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/update_by_chunk

# Emit event
function world_handler:events/emitters/on_chunk_loaded
