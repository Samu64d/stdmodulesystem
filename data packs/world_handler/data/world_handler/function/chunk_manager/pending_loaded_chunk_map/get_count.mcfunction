#
# world_handler:chunk_manager/pending_loaded_chunk_map/get_count
#
# Get the count of loaded chunk descriptors inside the pending loaded chunk map
#> Return data
#  loaded chunk descriptor count

data modify storage io: iterable_map_ref set value "storage world_handler:data chunk_manager.pending_loaded_chunk_map"
return run function collections:referenced_iterable_map/count_keys
