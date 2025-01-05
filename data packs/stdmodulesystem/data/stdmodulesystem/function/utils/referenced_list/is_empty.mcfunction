#
# stdmodulesystem:utils/referenced_list/is_empty
#
# Check if a list is empty
#> Storage
#  @list_ref (in): the list reference
#> Return data
#  boolean flag

# Get length
execute store result score ::stdmodulesystem::utils::referenced_list length run function stdmodulesystem:utils/referenced_list/get_length

# Check for zero length
return run execute if score ::stdmodulesystem::utils::referenced_list length matches 0
