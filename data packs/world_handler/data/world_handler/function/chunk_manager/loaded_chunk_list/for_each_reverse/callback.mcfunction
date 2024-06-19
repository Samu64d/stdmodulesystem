#
# world_handler:chunk_manager/loaded_chunk_list/for_each_reverse/callback
#

# Call callback function
data modify storage io: loaded_chunk_descriptor set from storage io: element
data modify storage io: callback set from storage world_handler:volatile chunk_manager.temp_callback
function world_handler:chunk_manager/loaded_chunk_list/for_each_reverse/callback2 with storage io:
