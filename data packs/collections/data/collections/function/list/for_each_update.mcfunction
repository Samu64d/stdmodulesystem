#
# collections:list/for_each_update
#
# Update all list elements matching a condition
#> Storage
#  @list (inout): the list
#  @callback (in): the callback function
#> Return void

# Check for not empty list
execute unless function collections:list/is_empty run function collections:list/for_each_update/loop_init
