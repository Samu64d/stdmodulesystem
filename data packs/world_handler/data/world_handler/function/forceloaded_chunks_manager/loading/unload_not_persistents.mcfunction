#
# world_handler:forceloaded_chunks_manager/loading/unload_not_persistents
#

# Iterate through the forceloaded chunk map
data modify storage io: callback set value "world_handler:forceloaded_chunks_manager/loading/unload_not_persistents/callback"
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each
