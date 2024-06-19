#
# collections:list/for_each
#
# Iterate through a list
#> Storage
#  @list (in): the list
#  @callback (in): the callback function
#> Return void

# Check for not empty list
execute unless function collections:list/is_empty run function collections:list/for_each/loop_init
