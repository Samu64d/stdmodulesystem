#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/get_count
#
# Get the count of forceloaded chunk descriptors inside the forceloaded chunk map
#> Return data
#  forceloaded chunk descriptor count

# Clear the forceloaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
return run function collections:referenced_iterable_map/count_keys
