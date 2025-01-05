#
# world_handler:chunk_manager/pending_loaded_chunk_map/remove_by_chunk
#
# Remove a loaded chunk descriptor matching a chunk descriptor from the pending loaded chunk map
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

# Remove the element from the pending loaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data chunk_manager.pending_loaded_chunk_map"
data modify storage io: key set from storage io: chunk_descriptor
function collections:referenced_iterable_map/remove_key
