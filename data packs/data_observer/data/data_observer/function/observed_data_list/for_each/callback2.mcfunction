#
# data_observer:observed_data_list/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage data_observer:volatile temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage data_observer:volatile temp_callback"
function stdmodulesystem:stack/pop
