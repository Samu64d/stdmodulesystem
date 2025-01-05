#
# world_handler:chunk_manager/loaded_chunk_list/get_count
#
# Get the count of loaded chunk descriptors inside the loaded chunk list
#> Return data
#  loaded chunk descriptor count

data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
return run function collections:referenced_list/get_length
