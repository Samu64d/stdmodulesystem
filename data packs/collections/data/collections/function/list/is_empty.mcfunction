#
# collections:list/is_empty
#
# Check if a list is empty
#> Storage
#  @list (in): the list
#> Return data
#  boolean flag

# Get length
execute store result score ::collections::list length run function collections:list/get_length

# Check for zero length
return run execute if score ::collections::list length matches 0
