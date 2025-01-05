#
# collections:referenced_list_multimap/for_each_key_value_element
#
# Iterate through the key value elements of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#  @callback (in): the callback function
#> Return void

# Check if key exist
execute unless function collections:referenced_list_multimap/has_key run return 0

# Get key value reference
function collections:referenced_list_multimap/common/get_key_value_reference with storage io:

# Iterate through the list
function collections:referenced_list/for_each
