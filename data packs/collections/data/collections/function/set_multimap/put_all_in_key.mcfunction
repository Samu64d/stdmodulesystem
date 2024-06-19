#
# collections:set_multimap/put_all_in_key
#
# Set the key set value of a set multimap
#> Storage
#  @map (inout): the set multimap
#  @key (in): the key
#  @set (in): the set
#> Return void

data modify storage io: value set from storage io: set
function collections:map/set_key
