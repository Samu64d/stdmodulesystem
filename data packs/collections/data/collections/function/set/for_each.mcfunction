#
# collections:set/for_each
#
# Iterate through a set
#> Storage
#  @set (in): the set
#  @callback (in): the callback function
#> Return void

# Check for not empty set
execute unless function collections:set/is_empty run function collections:set/for_each/loop_init
