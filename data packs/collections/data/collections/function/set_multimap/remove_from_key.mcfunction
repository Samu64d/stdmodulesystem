#
# collections:set_multimap/remove_from_key
#
# Remove an element from the key set value of a set multimap
#> Storage
#  @map (inout): the set multimap
#  @key (in): the key
#  @value (in): the value
#> Return data
#  boolean flag

# Check if key exist
execute unless function collections:set_multimap/has_key run return run scoreboard players get ::const FALSE

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/push

# Get key value
function collections:set_multimap/get_all_from_key

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/pop

# Remove from the key value set
data modify storage io: element set from storage io: value
execute store result score ::collections::set_multimap success run function collections:set/remove

# Set key value
function collections:set_multimap/put_all_in_key

# Return data
return run scoreboard players get ::collections::set_multimap success
