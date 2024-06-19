#
# collections:referenced_list/remove_on_match
#
# Remove all elements from a list matching a condition
#> Storage
#  @list_ref (in): the list reference
#  @callback (in): the callback function
#> Return data
#  boolean flag

scoreboard players set ::collections::referenced_list count 0

# Check for not empty list
execute unless function collections:referenced_list/is_empty run function collections:referenced_list/remove_on_match/loop_init

# Return data
return run scoreboard players get ::collections::referenced_list count
