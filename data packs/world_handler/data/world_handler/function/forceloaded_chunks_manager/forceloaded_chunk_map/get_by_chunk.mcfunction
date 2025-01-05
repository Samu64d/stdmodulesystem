#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/get_by_chunk
#
# Get a forceloaded chunk descriptor from the forceloaded chunk map referencing a chunk descriptor
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @forceloaded_chunk_descriptor (out): the forceloaded chunk descriptor
#> Return data
#  boolean flag

# Get the element from the forceloaded chunk descriptor map
data modify storage io: iterable_map_ref set value "storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map"
data modify storage io: key set from storage io: chunk_descriptor
execute store result score ::world_handler::forceloaded_chunks_manager success run function collections:referenced_iterable_map/get_key
execute if score ::world_handler::forceloaded_chunks_manager success = ::const TRUE run data modify storage io: forceloaded_chunk_descriptor set from storage io: value

# Return data
return run scoreboard players get ::world_handler::forceloaded_chunks_manager success
