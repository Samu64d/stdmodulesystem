#
# world_handler:chunk_manager/pending_loaded_chunk_map/for_each/callback
#

# Call callback function
data modify storage io: loaded_chunk_descriptor set from storage io: value
data modify storage io: callback set from storage world_handler:volatile chunk_manager.temp_callback
function world_handler:chunk_manager/pending_loaded_chunk_map/for_each/callback2 with storage io:
