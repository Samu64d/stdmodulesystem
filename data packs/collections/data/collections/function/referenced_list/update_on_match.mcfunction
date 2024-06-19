#
# collections:referenced_list/update_on_match
#
# Replace all elements from a list matching a condition with an element
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#  @callback (in): the callback function
#> Return data
#  updated element count

scoreboard players set ::collections::referenced_list count 0

function collections:referenced_list/update_on_match/copy with storage io:

# Check for not empty list
execute unless function collections:referenced_list/is_empty run function collections:referenced_list/update_on_match/loop_init

# Return data
return run scoreboard players get ::collections::referenced_list count
