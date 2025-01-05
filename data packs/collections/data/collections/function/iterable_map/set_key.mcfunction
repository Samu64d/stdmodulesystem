#
# collections:iterable_map/set_key
#
# Set a key value of an iterable map
#> Storage
#  @iterable_map (inout): the iterable map
#  @key (in): the key
#  @value (in): the key value
#> Return void

# Check if the map has already the key
execute store result score ::collections::iterable_map success run function collections:iterable_map/has_key

# Set the key value
function collections:iterable_map/set_key/set with storage io:

# Return if the key was already present
execute if score ::collections::iterable_map success = ::const TRUE run return 0

# Set last key
function collections:iterable_map/set_key/set_last_key with storage io:
