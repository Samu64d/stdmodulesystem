#
# stdmodulesystem:utils/list/is_empty
#
# Check if a list is empty
#> Storage
#  @list (in): the list
#> Return data
#  boolean flag

# Get length
execute store result score ::stdmodulesystem::utils::list length run function stdmodulesystem:utils/list/get_length

# Check for zero length
return run execute if score ::stdmodulesystem::utils::list length matches 0
