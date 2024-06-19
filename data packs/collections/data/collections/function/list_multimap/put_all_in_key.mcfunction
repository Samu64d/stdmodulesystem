#
# collections:list_multimap/put_all_in_key
#
# Set the key list value of a list multimap
#> Storage
#  @map (inout): the list multimap
#  @key (in): the key
#  @list (in): the list
#> Return void

data modify storage io: value set from storage io: list
function collections:map/set_key
