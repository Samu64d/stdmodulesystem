#
# collections:set/add
#
# Add an element to a set
#> Storage
#  @set (inout): the set
#  @element (in): the element
#> Return data
#  boolean flag

# Check if the element is already present
execute if function collections:set/contains run return run scoreboard players get ::const FALSE

# Add the element
data modify storage io: set append from storage io: element

# Return data
return run scoreboard players get ::const TRUE
