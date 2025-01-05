#
# collections:referenced_list/get_first
#
# Get the first element of a list
#> Storage
#  @list_ref (in): the list reference
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function collections:referenced_list/is_empty run return run scoreboard players get ::const FALSE

# Get the first element of the list
function collections:referenced_list/get_first/get with storage io:

# Return data
return run scoreboard players get ::const TRUE
