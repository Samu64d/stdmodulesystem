#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile forceloaded_chunks_manager.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile forceloaded_chunks_manager.temp_callback"
function stdmodulesystem:stack/pop
