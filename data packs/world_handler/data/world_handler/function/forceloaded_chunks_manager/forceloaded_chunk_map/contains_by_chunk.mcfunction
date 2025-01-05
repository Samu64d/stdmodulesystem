#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/contains_by_chunk
#
# Check if the forceloaded chunk map contains a forceloaded chunk descriptor referencing a chunk descriptor
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
data modify storage io: key set from storage io: chunk_descriptor
return run function collections:referenced_iterable_map/has_key
