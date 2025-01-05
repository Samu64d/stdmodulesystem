#
# collections:list_multimap/remove_all_from_key
#
# Remove all the key list values of a list multimap
#> Storage
#  @map (inout): the list multimap
#  @key (in): the key
#> Return void

# Check if key not exist
execute unless function collections:list_multimap/has_key run return 0

# Get key value
function collections:list_multimap/get_all_from_key

# Empty list
function collections:list/empty

# Set key value
function collections:list_multimap/put_all_in_key
