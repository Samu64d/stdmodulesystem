#
# collections:referenced_list_multimap/remove_all_from_key
#
# Remove all the key list values of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#> Return void

# Check if key not exist
execute unless function collections:referenced_list_multimap/has_key run return 0

# Get key value reference
function collections:referenced_list_multimap/common/get_key_value_reference with storage io:

# Empty the list
return run function collections:referenced_list/empty
