#
# world_handler:chunk_manager/pending_loaded_chunk_map/clear
#
# Clear the pending loaded chunk map
#> Return void

# Clear the pending loaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data chunk_manager.pending_loaded_chunk_map"
function collections:referenced_iterable_map/clear
