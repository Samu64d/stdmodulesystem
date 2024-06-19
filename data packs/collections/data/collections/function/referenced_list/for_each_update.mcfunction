#
# collections:referenced_list/for_each_update
#
# Update all list elements matching a condition
#> Storage
#  @list_ref (in): the list reference
#  @callback (in): the callback function
#> Return void

# Check for not empty list
execute unless function collections:referenced_list/is_empty run function collections:referenced_list/for_each_update/loop_init
