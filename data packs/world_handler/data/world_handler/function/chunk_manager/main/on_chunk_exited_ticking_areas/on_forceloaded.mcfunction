#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded
#

# Get the loaded chunk descriptor from the pending loaded chunk map
execute store result score ::world_handler::chunk_manager temp0 run function world_handler:chunk_manager/pending_loaded_chunk_map/get_by_chunk

# Non pending chunk
execute if score ::world_handler::chunk_manager temp0 = ::const FALSE run function world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded_check_fails

# Pending chunk
execute if score ::world_handler::chunk_manager temp0 = ::const TRUE run function world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_forceloaded_check_success
