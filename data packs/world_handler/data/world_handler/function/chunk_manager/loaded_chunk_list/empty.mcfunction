#
# world_handler:chunk_manager/loaded_chunk_list/empty
#
# Empty the loaded chunk list
#> Return void

data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
function collections:referenced_list/empty
