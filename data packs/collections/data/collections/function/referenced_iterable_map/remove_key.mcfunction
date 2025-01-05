#
# collections:referenced_iterable_map/remove_key
#
# Remove a key from an iterable map
#> Storage
#  @iterable_map_ref (in): the iterable map reference
#  @key (in): the key
#> Return data
#  boolean flag

# Return if the map does not have the key
execute unless function collections:referenced_iterable_map/has_key run return run scoreboard players get ::const FALSE

# Remove the key
function collections:referenced_iterable_map/remove_key/remove with storage io:

# Return data
return run scoreboard players get ::const TRUE
