#
# collections:referenced_map/get_key_reference
#
# Get a key value reference of a map
#> Storage
#  @map_ref (in): the map reference
#  @key (in): the key
#  @value_ref (out): the key value reference
#> Return data
#  boolean flag

# Check for not existent key
execute unless function collections:referenced_map/has_key run return run scoreboard players get ::const FALSE

# Get key reference
return run function collections:referenced_map/get_key_reference/get with storage io:
