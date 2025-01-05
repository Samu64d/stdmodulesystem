#
# world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_not_forceloaded_check_success
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# Check for status unknow or unknow loaded
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW run return 0
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED run return 0

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Update the loaded chunk descriptor from the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/update_by_chunk
