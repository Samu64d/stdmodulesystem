#
# collections:referenced_set_multimap/get_all_from_key
#
# Get a key set value of a set multimap
#> Storage
#  @map_ref (in): the set multimap reference
#  @key (in): the key
#  @set (out): the set
#> Return data
#  boolean flag

# Get key
execute store result score ::collections::referenced_set_multimap success run function collections:referenced_map/get_key
data modify storage io: set set from storage io: value

# Return data
return run scoreboard players get ::collections::referenced_set_multimap success
