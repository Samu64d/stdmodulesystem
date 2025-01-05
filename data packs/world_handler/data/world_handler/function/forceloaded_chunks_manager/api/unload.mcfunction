#
# world_handler:forceloaded_chunks_manager/api/unload
#
# Unload a forceload a chunk referenced by a chunk descriptor, return a boolean flag indicating success or failure
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Check if the chunk is already loaded
execute unless function world_handler:forceloaded_chunks_manager/api/is_loaded run return run scoreboard players get ::const FALSE

# Unload the chunk
return run function world_handler:forceloaded_chunks_manager/loading/unload
