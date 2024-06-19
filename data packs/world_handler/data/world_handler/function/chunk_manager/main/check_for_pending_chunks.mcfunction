#
# world_handler:chunk_manager/main/check_for_pending_chunks
#

# Iterate through the list
data modify storage io: callback set value "world_handler:chunk_manager/main/process_loaded_chunk"
function world_handler:chunk_manager/pending_loaded_chunk_map/for_each
