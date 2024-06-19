#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each/callback
#

# Call callback function
data modify storage io: forceloaded_chunk_descriptor set from storage io: value
data modify storage io: callback set from storage world_handler:volatile forceloaded_chunks_manager.temp_callback
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each/callback2 with storage io:
