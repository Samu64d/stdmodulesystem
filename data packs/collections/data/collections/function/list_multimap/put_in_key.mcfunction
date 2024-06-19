#
# collections:list_multimap/put_in_key
#
# Add an element to the key list value of a list multimap
#> Storage
#  @map (inout): the list multimap
#  @key (in): the key
#  @value (in): the value
#> Return data
#  boolean flag

# Check if key not exist
execute unless function collections:list_multimap/has_key run function collections:list_multimap/put_in_key/set_empty_key_value

# Get key value
function collections:list_multimap/get_all_from_key

# Add to the key value list
data modify storage io: element set from storage io: value
execute store result score ::collections::list_multimap success run function collections:list/add_last

# Set key value
function collections:list_multimap/put_all_in_key

# Return data
return run scoreboard players get ::collections::list_multimap success
