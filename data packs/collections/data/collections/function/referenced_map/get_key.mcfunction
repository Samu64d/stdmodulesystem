#
# collections:referenced_map/get_key
#
# Get a key value of a map
#> Storage
#  @map_ref (in): the map reference
#  @key (in): the key
#  @value (out): the key value
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:referenced_map/has_key run return run scoreboard players get ::const FALSE

# Get key
return run function collections:referenced_map/get_key/get with storage io:
