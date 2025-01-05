#
# stdmodulesystem:stack/push
#
# Push an element inside the stack
#> Storage
#  @stack_element_ref (in): the element reference
#> Return void

data modify storage stdmodulesystem:volatile stack.temp_element set value []
function stdmodulesystem:stack/push/get with storage io:
data modify storage stdmodulesystem:volatile stack.stack append from storage stdmodulesystem:volatile stack.temp_element
