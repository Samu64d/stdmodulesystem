#
# world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_not_forceloaded
#

# Get the loaded chunk descriptor from the loaded chunk list
execute store result score ::world_handler::chunk_manager temp0 run function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk

# Non loaded chunk
execute if score ::world_handler::chunk_manager temp0 = ::const FALSE run function world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_not_forceloaded_check_fails

# Loaded chunk
execute if score ::world_handler::chunk_manager temp0 = ::const TRUE run function world_handler:chunk_manager/main/on_chunk_entered_ticking_areas/on_not_forceloaded_check_success
