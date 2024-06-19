#
# collections:referenced_list_multimap/remove_from_key
#
# Remove an element from the key list value of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#  @value_ref (in): the value reference
#> Return data
#  boolean flag

# Check if key exist
execute unless function collections:referenced_list_multimap/has_key run return run scoreboard players get ::const FALSE

# Get key value reference
function collections:referenced_list_multimap/common/get_key_value_reference with storage io:

# Remove from the key value list
data modify storage io: element_ref set from storage io: value_ref
return run function collections:referenced_list/remove
