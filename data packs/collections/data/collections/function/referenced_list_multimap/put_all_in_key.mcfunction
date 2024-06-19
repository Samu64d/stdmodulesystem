#
# collections:referenced_list_multimap/put_all_in_key
#
# Set the key list value of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#  @list_ref (in): the list reference
#> Return void

data modify storage io: value_ref set from storage io: list_ref
function collections:referenced_map/set_key
