#
# collections:iterable_map/for_each
#
# Iterate throuth an iterable map
#> Storage
#  @iterable_map (in): the iterable map
#  @callback (in): the callback function
#> Return void

# Clear current key
data remove storage collections:volatile iterable_map.current_key

# Get last key
data modify storage collections:volatile iterable_map.current_key set from storage io: iterable_map.last_key

# Return if the map is empty
execute unless data storage collections:volatile iterable_map.current_key run return 0

# Iterate through the map
function collections:iterable_map/for_each/loop with storage io:
