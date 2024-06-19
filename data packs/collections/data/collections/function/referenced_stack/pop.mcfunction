#
# collections:referenced_stack/pop
#
# Pop an element from a stack
#> Storage
#  @stack_ref (in): the stack reference
#  @element (out): the popped element
#> Return void

# Pop element
execute unless function collections:referenced_stack/is_empty run return run function collections:referenced_stack/pop/pop

# Return data
return run scoreboard players get ::const FALSE
