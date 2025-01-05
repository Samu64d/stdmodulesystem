#
# collections:stack/pop
#
# Pop an element from a stack
#> Storage
#  @stack (inout): the stack
#  @element (out): the popped element
#> Return data
#  boolean flag

# Pop element
execute unless function collections:stack/is_empty run return run function collections:stack/pop/pop

# Return data
return run scoreboard players get ::const FALSE
