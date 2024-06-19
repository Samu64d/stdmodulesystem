#
# collections:referenced_set/remove
#
# Remove an element from a set
#> Storage
#  @set_ref (in): the set reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

scoreboard players operation ::collections::referenced_set success = ::const FALSE

function collections:referenced_set/remove/copy with storage io:

# Check for not empty set
execute unless function collections:referenced_set/is_empty run function collections:referenced_set/remove/loop_init

# Return data
return run scoreboard players get ::collections::referenced_set success
