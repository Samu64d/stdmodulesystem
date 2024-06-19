#
# collections:referenced_set/for_each
#
# Iterate through a set
#> Storage
#  @set_ref (in): the set reference
#  @callback (in): the callback function
#> Return void

# Check for not empty set
execute unless function collections:referenced_set/is_empty run function collections:referenced_set/for_each/loop_init
