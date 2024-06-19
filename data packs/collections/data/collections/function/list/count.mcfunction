#
# collections:list/count
#
# Count how many times an element appears in a list
#> Storage
#  @list (in): the list
#  @element (in): the element
#> Return data
#  matched elements count

# Get the length of the list
execute store result score ::collections::list length run function collections:list/get_length

# Get the count of modified elements
data modify storage collections:volatile list.temp_list set from storage io: list
execute store result score ::collections::list modified_elements run data modify storage collections:volatile list.temp_list[] set from storage io: element

# Get absolute difference between count and length
scoreboard players operation ::collections::list length -= ::collections::list modified_elements

# Return data
return run scoreboard players get ::collections::list length
