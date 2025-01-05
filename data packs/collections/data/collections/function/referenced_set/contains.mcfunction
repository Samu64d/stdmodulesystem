#
# collections:referenced_set/contains
#
# Check if a set contains an element
#> Storage
#  @set_ref (in): the set reference
#  @element_ref (in): the element
#> Return data
#  boolean flag

# Get the size of the set
execute store result score ::collections::referenced_set size run function collections:referenced_set/get_size

# Get the count of modified elements
execute store result score ::collections::referenced_set modified_elements run function collections:referenced_set/contains/copy with storage io:

# Get absolute difference between count and size
scoreboard players operation ::collections::referenced_set size -= ::collections::referenced_set modified_elements

# Return data
return run execute if score ::collections::referenced_set size matches 1
