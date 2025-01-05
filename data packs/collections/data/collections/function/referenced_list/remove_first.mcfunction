#
# collections:referenced_list/remove_first
#
# Remove and return the first element of a list
#> Storage
#  @list_ref (in): the list reference
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function collections:referenced_list/is_empty run return run scoreboard players get ::const FALSE

# Remove and get the element
function collections:referenced_list/remove_first/remove with storage io:

# Return data
return run scoreboard players get ::const TRUE
