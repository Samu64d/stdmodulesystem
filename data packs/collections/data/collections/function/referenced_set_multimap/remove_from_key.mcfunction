#
# collections:referenced_set_multimap/remove_from_key
#
# Remove an element from the key set value of a set multimap
#> Storage
#  @map_ref (in): the set multimap reference
#  @key (in): the key
#  @value_ref (in): the value reference
#> Return data
#  boolean flag

# Check if key exist
execute unless function collections:referenced_set_multimap/has_key run return run scoreboard players get ::const FALSE

# Get key value reference
function collections:referenced_set_multimap/common/get_key_value_reference with storage io:

# Remove from the key value set
data modify storage io: element_ref set from storage io: value_ref
return run function collections:referenced_set/remove
