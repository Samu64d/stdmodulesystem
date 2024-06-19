#
# stdmodulesystem:stack/pop
#
# Pop an element from the stack
#> Storage
#  @stack_element_ref (in): the element reference
#> Return void

function stdmodulesystem:stack/pop/get with storage io:
data remove storage stdmodulesystem:volatile stack.stack[-1]
