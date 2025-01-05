#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/clear
#
# Clear the forceloaded chunk map
#> Return void

# Clear the forceloaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
function collections:referenced_iterable_map/clear

# Update cache
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/reset_next_expire_time
