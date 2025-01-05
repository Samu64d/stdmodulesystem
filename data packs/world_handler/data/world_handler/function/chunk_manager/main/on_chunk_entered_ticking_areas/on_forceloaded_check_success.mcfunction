#
# world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_forceloaded_check_success
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# Check for status wait load
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_LOAD run return 0

# Get the loaded chunk descriptor from the loaded chunk list
execute store result score ::world_handler::chunk_manager temp1 run function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk

# Non loaded chunk
execute if score ::world_handler::chunk_manager temp1 = ::const FALSE run function world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_forceloaded_check_success_check_fails

# Loaded chunk
execute if score ::world_handler::chunk_manager temp1 = ::const TRUE run function world_handler:chunk_manager/pending_loaded_chunk_map/remove_by_chunk
