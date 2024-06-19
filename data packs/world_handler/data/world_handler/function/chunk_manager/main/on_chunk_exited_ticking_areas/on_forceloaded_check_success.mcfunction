#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded_check_success
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# Check for status wait load
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD run return 0

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Set the loaded chunk descriptor at the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/set
