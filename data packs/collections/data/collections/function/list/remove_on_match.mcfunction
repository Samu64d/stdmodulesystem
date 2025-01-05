#
# collections:list/remove_on_match
#
# Remove all elements from a list matching a condition
#> Storage
#  @list (inout): the list
#  @callback (in): the callback function
#> Return data
#  removed element count

scoreboard players set ::collections::list count 0

# Check for not empty list
execute unless function collections:list/is_empty run function collections:list/remove_on_match/loop_init

# Return data
return run scoreboard players get ::collections::list count
