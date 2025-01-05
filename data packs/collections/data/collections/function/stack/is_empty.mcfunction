#
# collections:stack/is_empty
#
# Check if a stack is empty
#> Storage
#  @stack (in): the stack
#> Return data
#  boolean flag

# Get size
execute store result score ::collections::stack size run function collections:stack/get_size

# Check for zero size
return run execute if score ::collections::list size matches 0
