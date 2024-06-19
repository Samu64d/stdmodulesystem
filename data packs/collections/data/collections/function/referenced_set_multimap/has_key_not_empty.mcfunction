#
# collections:referenced_set_multimap/has_key_not_empty
#
# Check if a set multimap has a key not empty
#> Storage
#  @map_ref (in): the set multimap reference
#  @key (in): the key
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:referenced_set_multimap/has_key run return run scoreboard players get ::const FALSE

# Get key value reference
function collections:referenced_set_multimap/common/get_key_value_reference with storage io:

# Check for not empty key value
execute store result score ::collections::referenced_set_multimap success run function collections:referenced_set/is_empty
return run execute if score ::collections::referenced_set_multimap success = ::const FALSE
