#
# world_handler:forceloaded_chunks_manager/api/is_loaded
#
# Check if a chunk referenced by a chunk descriptor is loaded
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Check for loading
return run function world_handler:forceloaded_chunks_manager/loading/query
