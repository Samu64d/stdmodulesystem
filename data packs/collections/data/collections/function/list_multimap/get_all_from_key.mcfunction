#
# collections:list_multimap/get_all_from_key
#
# Get a key list value of a list multimap
#> Storage
#  @map (in): the list multimap
#  @key (in): the key
#  @list (out): the list
#> Return data
#  boolean flag

# Get key
execute store result score ::collections::list_multimap success run function collections:map/get_key
data modify storage io: list set from storage io: value

# Return data
return run scoreboard players get ::collections::list_multimap success
