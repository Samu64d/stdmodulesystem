#
# world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_not_forceloaded
#

# Get the loaded chunk descriptor from the loaded chunk list
execute unless function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk run return 0

# Get status
execute store result score ::world_handler::chunk_manager status run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status

# On status unknow
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW run function world_handler:chunk_manager/loaded_chunk_list/remove_by_chunk

# On status unknow loaded
execute if score ::world_handler::chunk_manager status = ::world_handler::chunk_manager::enum_loaded_chunk_status UNKNOW_LOADED run function world_handler:chunk_manager/main/on_chunk_exited_ticking_areas/on_not_forceloaded_unknow_loaded
