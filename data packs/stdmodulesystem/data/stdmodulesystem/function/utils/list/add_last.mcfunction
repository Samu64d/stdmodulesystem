#
# stdmodulesystem:utils/list/add_last
#
# Add an element as the last element of a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return void

data modify storage io: list append from storage io: element
