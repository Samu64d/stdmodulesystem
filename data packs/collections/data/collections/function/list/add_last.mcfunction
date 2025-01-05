#
# collections:list/add_last
#
# Insert an element at the tail of a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return void

data modify storage io: list append from storage io: element
