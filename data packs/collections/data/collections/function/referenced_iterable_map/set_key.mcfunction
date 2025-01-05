#
# collections:referenced_iterable_map/set_key
#
# Set a key value of an iterable map
#> Storage
#  @iterable_map_ref (in): the iterable map reference
#  @key (in): the key
#  @value_ref (in): the key value reference
#> Return void

# Check if the map has already the key
execute store result score ::collections::referenced_iterable_map success run function collections:referenced_iterable_map/has_key

# Set the key value
function collections:referenced_iterable_map/set_key/set with storage io:

# Return if the key was already present
execute if score ::collections::referenced_iterable_map success = ::const TRUE run return 0

# Set last key
function collections:referenced_iterable_map/set_key/set_last_key with storage io:
