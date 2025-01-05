#
# obj:runtime/class_info_map/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "obj:volatile runtime.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "obj:volatile runtime.temp_callback"
function stdmodulesystem:stack/pop
