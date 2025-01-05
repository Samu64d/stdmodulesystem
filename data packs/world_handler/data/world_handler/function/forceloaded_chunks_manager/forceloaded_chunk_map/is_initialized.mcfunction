#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/is_initialized
#
# Check if the forceloaded chunk map is initialized
#> Return data
#  boolean flag

return run execute if data storage world_handler:data chunk_manager.loaded_chunk_map
