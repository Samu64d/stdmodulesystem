#
# collections:referenced_iterable_map/get_key
#
# Get a key value of an iterable map
#> Storage
#  @iterable_map_ref (in): the iterable map reference
#  @key (in): the key
#  @value (out): the key value
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:referenced_iterable_map/has_key run return run scoreboard players get ::const FALSE

# Get key
return run function collections:referenced_iterable_map/get_key/get with storage io:
