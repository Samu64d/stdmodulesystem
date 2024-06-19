#
# collections:map/get_key
#
# Get a key value of a map
#> Storage
#  @map (in): the map
#  @key (in): the key
#  @value (out): the key value
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:map/has_key run return run scoreboard players get ::const FALSE

# Get key
return run function collections:map/get_key/get with storage io:
