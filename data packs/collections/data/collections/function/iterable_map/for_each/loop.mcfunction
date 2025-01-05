#
# collections:iterable_map/for_each/loop
#

# Get key value
data modify storage io: key set from storage collections:volatile iterable_map.current_key
function collections:iterable_map/for_each/get_key_data with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: iterable_map"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage collections:volatile iterable_map.current_key"
function stdmodulesystem:stack/push

# Call callback function
data modify storage io: value set from storage io: key_data.value
$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage scollections:volatile iterable_map.current_key"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: iterable_map"
function stdmodulesystem:stack/pop

# Update current key
data remove storage io: prev_key
data modify storage io: prev_key set from storage io: key_data.prev_key
execute unless data storage io: prev_key run data remove storage collections:volatile iterable_map.current_key
execute if data storage io: prev_key run function collections:iterable_map/for_each/update_current_key with storage io:

execute if data storage collections:volatile iterable_map.current_key run function collections:iterable_map/for_each/loop with storage io:

# Loop
