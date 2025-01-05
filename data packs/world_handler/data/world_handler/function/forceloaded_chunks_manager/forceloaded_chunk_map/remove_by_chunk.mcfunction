#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/remove_by_chunk
#
# Remove a forceloaded chunk descriptor matching a chunk descriptor from the forceloaded chunk map
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

# Get expiry time
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/get_by_chunk
execute store result score ::world_handler::forceloaded_chunks_manager temp0 run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_expire_time

# Remove the element from the forceloaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
data modify storage io: key set from storage io: chunk_descriptor
function collections:referenced_iterable_map/remove_key

# Update cache
execute unless score ::world_handler::forceloaded_chunks_manager temp0 matches ..-1 run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/invalidate_next_expire_time
