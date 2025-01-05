#
# collections:list/update_on_match
#
# Replace all elements from a list matching a condition with an element
#> Storage
#  @list (inout): the list
#  @element (in): the element
#  @callback (in): the callback function
#> Return data
#  updated element count

scoreboard players set ::collections::list count 0

data modify storage collections:volatile list.temp_element set from storage io: element

# Check for not empty list
execute unless function collections:list/is_empty run function collections:list/update_on_match/loop_init

# Return data
return run scoreboard players get ::collections::list count
