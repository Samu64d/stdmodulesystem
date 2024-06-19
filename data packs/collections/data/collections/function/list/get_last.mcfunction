#
# collections:list/get_last
#
# Get the last element of a list
#> Storage
#  @list (in): the list
#  @element (out): the element
#> Return data
#  boolean flag

# Check for empty list
execute if function collections:list/is_empty run return run scoreboard players get ::const FALSE

# Get the last element of the list
data modify storage io: element set from storage io: list[-1]

# Return data
return run scoreboard players get ::const TRUE
