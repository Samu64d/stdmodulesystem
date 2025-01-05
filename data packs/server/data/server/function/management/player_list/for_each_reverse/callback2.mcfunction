#
# server:management/player_list/for_each_reverse/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage server:volatile management.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage server:volatile management.temp_callback"
function stdmodulesystem:stack/pop
