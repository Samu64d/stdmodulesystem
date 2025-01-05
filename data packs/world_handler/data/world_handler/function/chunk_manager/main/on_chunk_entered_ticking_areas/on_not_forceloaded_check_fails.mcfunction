#
# world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_not_forceloaded_check_fails
#

# Create a new loaded chunk descriptor
scoreboard players operation ::in status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW
function world_handler:chunk_manager/loaded_chunk_descriptor/new

# Add the loaded chunk descriptor to the loaded chunk list
function world_handler:chunk_manager/loaded_chunk_list/add
