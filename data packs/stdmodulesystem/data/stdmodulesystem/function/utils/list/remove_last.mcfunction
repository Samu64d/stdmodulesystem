#
# stdmodulesystem:utils/list/remove_last
#
# Get and remove the last element of a list
#> Storage
#  @list (inout): the list
#  @element (out): the element
#> Return void

data modify storage io: element set from storage io: list[-1]
data remove storage io: list[-1]
