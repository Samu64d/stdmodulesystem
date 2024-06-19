#
# stdmodulesystem:utils/referenced_list/remove_last
#
# Remove and return the last element of a list
#> Storage
#  @list_ref (in): the list reference
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function stdmodulesystem:utils/referenced_list/is_empty run return run scoreboard players get ::const FALSE

# Remove and get the element
function stdmodulesystem:utils/referenced_list/remove_last/remove with storage io:

# Return data
return run scoreboard players get ::const TRUE
