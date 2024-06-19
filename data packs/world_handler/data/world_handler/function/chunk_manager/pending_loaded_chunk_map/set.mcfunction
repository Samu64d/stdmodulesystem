#
# world_handler:chunk_manager/pending_loaded_chunk_map/set
#
# Set a loaded chunk descriptor at the pending loaded chunk map
#> Storage
#  @loaded_chunk_descriptor (in): the loaded chunk descriptor
#> Return void

# Set the element at the pending loaded chunk map
data modify storage io: iterable_map_ref set value "world_handler:data chunk_manager.loaded_chunk_map"
function world_handler:chunk_manager/loaded_chunk_descriptor/get_chunk
data modify storage io: key set from storage io: chunk_descriptor
data modify storage io: value_ref set value "io: loaded_chunk_descriptor"
function collections:referenced_iterable_map/set_key
