#
# collections:list_multimap/remove_from_key
#
# Remove an element from the key list value of a list multimap
#> Storage
#  @map (inout): the list multimap
#  @key (in): the key
#  @value (in): the value
#> Return data
#  boolean flag

# Check if key exist
execute unless function collections:list_multimap/has_key run return run scoreboard players get ::const FALSE

# Get key value
function collections:list_multimap/get_all_from_key

# Remove from the key value list
data modify storage io: element set from storage io: value
execute store result score ::collections::list_multimap success run function collections:list/remove

# Set key value
function collections:list_multimap/put_all_in_key

# Return data
return run scoreboard players get ::collections::list_multimap success
