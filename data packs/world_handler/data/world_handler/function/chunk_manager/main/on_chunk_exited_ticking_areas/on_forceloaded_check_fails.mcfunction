#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded_check_fails
#

# Create a new loaded chunk descriptor
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD
function world_handler:chunk_manager/loaded_chunk_descriptor/new

# Set the loaded chunk descriptor at the pending loaded chunk map
function world_handler:chunk_manager/pending_loaded_chunk_map/set
