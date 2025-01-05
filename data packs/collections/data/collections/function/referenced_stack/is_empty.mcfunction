#
# collections:referenced_stack/is_empty
#
# Check if a stack is empty
#> Storage
#  @stack_ref (in): the stack reference
#> Return data
#  boolean flag

# Get size
execute store result score ::collections::referenced_stack size run function collections:referenced_stack/get_size

# Check for zero size
return run execute if score ::collections::referenced_list size matches 0
