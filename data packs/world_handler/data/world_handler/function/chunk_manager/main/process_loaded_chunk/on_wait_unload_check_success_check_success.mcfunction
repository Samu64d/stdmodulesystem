#
# world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success_check_success
#

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# On status unknow
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW run return 0

# On status loaded
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status LOADED run function world_handler:chunk_manager/loaded_chunk_list/remove_by_chunk

# On status unknow loaded
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED run function world_handler:chunk_manager/main/process_loaded_chunk/on_wait_unload_check_success_check_success_unknow_loaded

# Emit event
function world_handler:events/emitters/on_chunk_unloaded
