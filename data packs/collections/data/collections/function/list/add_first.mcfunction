#
# collections:list/add_first
#
# Insert an element at the head of a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return void

data modify storage io: list prepend from storage io: element
