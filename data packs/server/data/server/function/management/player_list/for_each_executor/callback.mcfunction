#
# server:management/player_list/for_each_executor/callback
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage server:volatile management.temp_callback"
function stdmodulesystem:stack/push

# Call callback function
data modify storage io: player_descriptor set from storage io: element
data modify storage io: callback set from storage server:volatile management.temp_callback
function server:management/player_descriptor/select

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage server:volatile management.temp_callback"
function stdmodulesystem:stack/pop
