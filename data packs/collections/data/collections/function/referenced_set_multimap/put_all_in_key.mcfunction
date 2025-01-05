#
# collections:referenced_set_multimap/put_all_in_key
#
# Set the key set value of a set multimap
#> Storage
#  @map_ref (in): the set multimap reference
#  @key (in): the key
#  @set_ref (in): the set reference
#> Return void

data modify storage io: value_ref set from storage io: set_ref
function collections:referenced_map/set_key
