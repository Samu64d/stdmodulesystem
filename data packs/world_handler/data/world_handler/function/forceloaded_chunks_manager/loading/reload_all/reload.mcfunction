#
# world_handler:forceloaded_chunks_manager/loading/reload_all/reload
#

# Remove the forceloaded chunk if loading fails
execute unless function world_handler:forceload/load run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/remove_by_chunk
