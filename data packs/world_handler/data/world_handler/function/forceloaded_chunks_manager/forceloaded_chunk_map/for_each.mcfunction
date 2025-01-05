#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each
#
# Iterate through the forceloaded chunk map
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage world_handler:volatile forceloaded_chunks_manager.temp_callback set from storage io: callback

# Iterate through the forceloaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
data modify storage io: callback set value "world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each/callback"
function collections:referenced_iterable_map/for_each
