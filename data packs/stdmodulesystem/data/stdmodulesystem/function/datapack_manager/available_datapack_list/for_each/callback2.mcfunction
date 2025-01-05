#
# stdmodulesystem:datapack_manager/available_datapack_list/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage stdmodulesystem:volatile datapack_manager.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage stdmodulesystem:volatile datapack_manager.temp_callback"
function stdmodulesystem:stack/pop
