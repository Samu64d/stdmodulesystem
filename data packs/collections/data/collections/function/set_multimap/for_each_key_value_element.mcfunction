#
# collections:set_multimap/for_each_key_value_element
#
# Iterate through the key value elements of a set multimap
#> Storage
#  @map (in): the set multimap
#  @key (in): the key
#  @callback (in): the callback function
#> Return void

# Check if key exist
execute unless function collections:set_multimap/has_key run return 0

# Get key value
function collections:set_multimap/get_all_from_key

# Iterate through the set
function collections:set/for_each
