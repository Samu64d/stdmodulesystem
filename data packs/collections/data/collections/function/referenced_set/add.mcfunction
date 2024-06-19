#
# collections:referenced_set/add
#
# Add an element to a set
#> Storage
#  @set_ref (in): the set reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

# Check if the element is already present
execute if function collections:referenced_set/contains run return run scoreboard players get ::const FALSE

# Add the element
function collections:referenced_set/add/add with storage io:

# Return data
return run scoreboard players get ::const TRUE
