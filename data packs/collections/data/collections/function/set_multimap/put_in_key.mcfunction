#
# collections:set_multimap/put_in_key
#
# Add an element to the key set value of a set multimap
#> Storage
#  @map (inout): the set multimap
#  @key (in): the key
#  @value (in): the value
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/push

# Check if key not exist
execute unless function collections:set_multimap/has_key run function collections:set_multimap/put_in_key/set_empty_key_value

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/pop

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/push

# Get key value
function collections:set_multimap/get_all_from_key

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/pop

# Add to the key value set
data modify storage io: element set from storage io: value
execute store result score ::collections::set_multimap success run function collections:set/add

# Set key value
function collections:set_multimap/put_all_in_key

# Return data
return run scoreboard players get ::collections::set_multimap success
