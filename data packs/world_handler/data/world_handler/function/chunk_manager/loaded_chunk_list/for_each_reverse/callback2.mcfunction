#
# world_handler:chunk_manager/loaded_chunk_list/for_each_reverse/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile forceloaded_chunks_manager.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage world_handler:volatile forceloaded_chunks_manager.temp_callback"
function stdmodulesystem:stack/pop
