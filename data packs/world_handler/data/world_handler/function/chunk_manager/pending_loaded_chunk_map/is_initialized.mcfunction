#
# world_handler:chunk_manager/pending_loaded_chunk_map/is_initialized
#
# Check if the pending loaded chunk map is initialized
#> Return data
#  boolean flag

return run execute if data storage world_handler:data chunk_manager.pending_loaded_chunk_map
