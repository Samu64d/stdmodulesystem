#
# world_handler:chunk_manager/main/process_loaded_chunk
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# On status wait load
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_LOAD run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_load

# On status wait unlaod
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status WAIT_UNLOAD run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload
