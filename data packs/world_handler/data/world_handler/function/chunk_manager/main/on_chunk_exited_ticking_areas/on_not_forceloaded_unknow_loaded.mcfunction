#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_not_forceloaded_unknow_loaded
#

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status LOADED
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Update the loaded chunk descriptor from the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/update_by_chunk
