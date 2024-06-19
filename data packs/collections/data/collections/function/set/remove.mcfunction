#
# collections:set/remove
#
# Remove an element from a set
#> Storage
#  @set (inout): the set
#  @element (in): the element
#> Return data
#  boolean flag

scoreboard players operation ::collections::set success = ::const FALSE

data modify storage collections:volatile set.temp_element set from storage io: element

# Check for not empty set
execute unless function collections:set/is_empty run function collections:set/remove/loop_init

# Return data
return run scoreboard players get ::collections::set success
