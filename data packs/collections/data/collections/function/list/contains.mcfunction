#
# collections:list/contains
#
# Check if a list contains an element
#> Storage
#  @list (in): the list
#  @element (in): the element
#> Return data
#  boolean flag

# Get element count
execute store result score ::collections::list count run function collections:list/count

# Check for count not 0
return run execute if score ::collections::list count matches 1..
