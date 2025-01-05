#
# collections:referenced_iterable_map/for_each_key/loop
#

# Get key previous key
data modify storage io: key set from storage collections:volatile referenced_iterable_map.current_key
data modify storage io: key_prev_key set value {}
function collections:referenced_iterable_map/for_each_key/get_key_prev_key with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: iterable_map_ref"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage collections:volatile referenced_iterable_map.current_key"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: key_prev_key"
function stdmodulesystem:stack/push

# Call callback function
$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: key_prev_key"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage collections:volatile referenced_iterable_map.current_key"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: iterable_map_ref"
function stdmodulesystem:stack/pop

# Update current key
data remove storage io: prev_key
data modify storage io: prev_key set from storage io: key_prev_key.key
execute unless data storage io: prev_key run data remove storage collections:volatile referenced_iterable_map.current_key
execute if data storage io: prev_key run function collections:referenced_iterable_map/for_each_key/update_current_key with storage io:

execute if data storage collections:volatile referenced_iterable_map.current_key run function collections:referenced_iterable_map/for_each_key/loop with storage io:

# Loop
