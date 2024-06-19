#
# world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_forceloaded_check_success_check_fails
#

# Set status
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_LOAD
function world_handler:chunk_manager/loaded_chunk_descriptor/set_status

# Set the loaded chunk descriptor at the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/set
