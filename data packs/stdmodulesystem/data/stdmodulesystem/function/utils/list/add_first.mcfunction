#
# stdmodulesystem:utils/list/add_first
#
# Add an element as the first element of a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return void

data modify storage io: list prepend from storage io: element
