#
# collections:iterable_map/get_key
#
# Get a key value of an iterable map
#> Storage
#  @iterable_map (in): the iterable map
#  @key (in): the key
#  @value (out): the key value
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:iterable_map/has_key run return run scoreboard players get ::const FALSE

# Get key
return run function collections:iterable_map/get_key/get with storage io:
