#
# collections:referenced_list_multimap/put_in_key
#
# Add an element to the key list value of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#  @value_ref (in): the value reference
#> Return data
#  boolean flag

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value_ref"
function stdmodulesystem:stack/push

# Check if key not exist
execute unless function collections:referenced_list_multimap/has_key run function collections:referenced_list_multimap/put_in_key/set_empty_key_value

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value_ref"
function stdmodulesystem:stack/pop

# Get key value reference
function collections:referenced_list_multimap/common/get_key_value_reference with storage io:

# Add to the key value list
data modify storage io: element_ref set from storage io: value_ref
return run function collections:referenced_list/add_first
