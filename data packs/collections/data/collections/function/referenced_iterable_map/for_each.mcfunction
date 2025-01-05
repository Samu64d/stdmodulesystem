#
# collections:referenced_iterable_map/for_each
#
# Iterate throuth an iterable map
#> Storage
#  @iterable_map_ref (in): the iterable map reference
#  @callback (in): the callback function
#> Return void

# Clear current key
data remove storage collections:volatile referenced_iterable_map.current_key

# Get last key
function collections:referenced_iterable_map/for_each/get_last_key with storage io:

# Return if the map is empty
execute unless data storage collections:volatile referenced_iterable_map.current_key run return 0

# Iterate through the map
function collections:referenced_iterable_map/for_each/loop with storage io:
