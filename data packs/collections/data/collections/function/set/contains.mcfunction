#
# collections:set/contains
#
# Check if a set contains an element
#> Storage
#  @set (in): the set
#  @element (in): the element
#> Return data
#  boolean flag

# Get the size of the set
execute store result score ::collections::set size run function collections:set/get_size

# Get the count of modified elements
data modify storage collections:volatile set.temp_set set from storage io: set
execute store result score ::collections::set modified_elements run data modify storage collections:volatile set.temp_set[] set from storage io: element

# Get absolute difference between count and size
scoreboard players operation ::collections::set size -= ::collections::set modified_elements

# Return data
return run execute if score ::collections::set size matches 1
