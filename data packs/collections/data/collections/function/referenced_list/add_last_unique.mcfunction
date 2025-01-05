#
# collections:referenced_list/add_last_unique
#
# Insert an element at the tail of a list if it's not in the list
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

# Check if the list contains the element
execute if function collections:referenced_list/contains run return run scoreboard players get ::const FALSE

# Add the element
function collections:referenced_list/add_last

# Return data
return run scoreboard players get ::const TRUE
