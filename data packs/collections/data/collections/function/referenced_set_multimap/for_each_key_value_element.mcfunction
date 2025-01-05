#
# collections:referenced_set_multimap/for_each_key_value_element
#
# Iterate through the key value elements of a set multimap
#> Storage
#  @map_ref (in): the set multimap reference
#  @key (in): the key
#  @callback (in): the callback function
#> Return void

# Check if key exist
execute unless function collections:referenced_set_multimap/has_key run return 0

# Get key value reference
function collections:referenced_set_multimap/common/get_key_value_reference with storage io:

# Iterate through the set
function collections:referenced_set/for_each
