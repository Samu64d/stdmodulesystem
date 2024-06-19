#
# collections:referenced_list_multimap/get_all_from_key
#
# Get a key list value of a list multimap
#> Storage
#  @map_ref (in): the list multimap reference
#  @key (in): the key
#  @list (out): the list
#> Return data
#  boolean flag

# Get key
execute store result score ::collections::referenced_list_multimap success run function collections:referenced_map/get_key
data modify storage io: list set from storage io: value

# Return data
return run scoreboard players get ::collections::referenced_list_multimap success
