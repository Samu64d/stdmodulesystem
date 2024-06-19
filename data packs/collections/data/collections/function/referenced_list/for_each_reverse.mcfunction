#
# collections:referenced_list/for_each_reverse
#
# Iterate from the head through a list
#> Storage
#  @list_ref (in): the list reference
#  @callback (in): the callback function
#> Return void

# Check for not empty list
execute unless function collections:referenced_list/is_empty run function collections:referenced_list/for_each_reverse/loop_init
