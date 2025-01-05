#
# collections:referenced_list/count
#
# Count how many times an element appears in a list
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#> Return data
#  matched elements count

# Get the length of the list
execute store result score ::collections::referenced_list length run function collections:referenced_list/get_length

# Get the count of modified elements
function collections:referenced_list/count/copy with storage io:

# Get absolute difference between count and length
scoreboard players operation ::collections::referenced_list length -= ::collections::referenced_list modified_elements

# Return data
return run scoreboard players get ::collections::referenced_list length
