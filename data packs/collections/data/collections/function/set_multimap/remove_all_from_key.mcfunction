#
# collections:set_multimap/remove_all_from_key
#
# Remove all the key set values of a list multimap
#> Storage
#  @map (inout): the list multimap
#  @key (in): the key
#> Return void

# Check if key not exist
execute unless function collections:set_multimap/has_key run return 0

# Get key value
function collections:set_multimap/get_all_from_key

# Empty set
function collections:set/empty

# Set key value
function collections:set_multimap/put_all_in_key
