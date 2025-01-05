#
# collections:list/remove_first
#
# Remove and return the first element of a list
#> Storage
#  @list (inout): the list
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function collections:list/is_empty run return run scoreboard players get ::const FALSE

# Get the first element of the list
data modify storage io: element set from storage io: list[0]

# Remove the first element
data remove storage io: list[0]

# Return data
return run scoreboard players get ::const TRUE
