#
# collections:referenced_list/contains
#
# Check if a list contains an element
#> Storage
#  @list_ref (in): the list reference
#  @element_ref (in): the element reference
#> Return data
#  boolean flag

# Get element count
execute store result score ::collections::referenced_list count run function collections:referenced_list/count

# Check for count not 0
return run execute if score ::collections::referenced_list count matches 1..
