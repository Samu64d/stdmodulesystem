#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/set
#
# Set a forceloaded chunk descriptor at the forceloaded chunk map
#> Storage
#  @forceloaded_chunk_descriptor (in): the forceloaded chunk descriptor
#> Return void

# Set the element at the forceloaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk
data modify storage io: key set from storage io: chunk_descriptor
data modify storage io: value_ref set value "storage io: forceloaded_chunk_descriptor"
function collections:referenced_iterable_map/set_key

# Update cache
execute store result score ::in expire_time run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_expire_time
scoreboard players operation ::in revalidate = ::const FALSE
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/update_next_expire_time
