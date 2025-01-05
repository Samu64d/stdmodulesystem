#
# world_handler:chunk_manager/pending_loaded_chunk_map/for_each
#
# Iterate from the head through the pending loaded chunk map
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage world_handler:volatile chunk_manager.temp_callback set from storage io: callback

# Iterate through the pending loaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data chunk_manager.pending_loaded_chunk_map"
data modify storage io: callback set value "world_handler:chunk_manager/pending_loaded_chunk_map/for_each/callback"
function collections:referenced_iterable_map/for_each
