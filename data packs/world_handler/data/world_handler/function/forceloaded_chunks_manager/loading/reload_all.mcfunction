#
# world_handler:forceloaded_chunks_manager/loading/reload_all
#

# Iterate through the forceloaded chunk map
data modify storage io: callback set value "world_handler:forceloaded_chunks_manager/loading/reload_all/callback"
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each
