#
# collections:list_multimap/for_each_key_value_element
#
# Iterate through the key value elements of a list multimap
#> Storage
#  @map (in): the list multimap
#  @key (in): the key
#  @callback (in): the callback function
#> Return void

# Check if key exist
execute unless function collections:list_multimap/has_key run return 0

# Get key value
function collections:list_multimap/get_all_from_key

# Iterate through the list
function collections:list/for_each
