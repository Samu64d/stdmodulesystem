#
# collections:referenced_list/get_last
#
# Get the last element of a list
#> Storage
#  @list_ref (in): the list reference
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function collections:referenced_list/is_empty run return run scoreboard players get ::const FALSE

# Get the last element of the list
function collections:referenced_list/get_last/get with storage io:

# Return data
return run scoreboard players get ::const TRUE
