#
# collections:stack/push
#
# Push an element inside a stack
#> Storage
#  @stack (inout): the stack
#  @element (in): the element to push
#> Return void

data modify storage io: stack append from storage io: element
