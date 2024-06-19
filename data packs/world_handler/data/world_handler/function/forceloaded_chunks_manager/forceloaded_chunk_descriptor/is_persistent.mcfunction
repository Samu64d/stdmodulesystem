#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/is_persistent
#
# Check if a forceloaded chunk descriptor is persistent
#> Storage
#  @forceloaded_chunk_descriptor (in): the forceloaded chunk descriptor
#> Return data
#  boolean flag

return run data get storage io: forceloaded_chunk_descriptor.persistent 1.0
