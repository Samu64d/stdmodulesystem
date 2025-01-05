#
# world_handler:chunk_manager/api/get_chunk_status
#
# Get the status of a chunk referencing a chunk descriptor
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  status

# Get loaded chunk descriptor
execute unless function world_handler:chunk_manager/loaded_chunk_list/get_by_chunk unless function world_handler:chunk_manager/pending_loaded_chunk_map/get_by_chunk run return run scoreboard players get ::world_handler::chunk_manager::enum_loaded_chunk_status UNLOADED

# Get status
return run function world_handler:chunk_manager/loaded_chunk_descriptor/get_status
