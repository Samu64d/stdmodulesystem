#
# stdmodulesystem:utils/list/remove_first
#
# Get and remove the first element of a list
#> Storage
#  @list (inout): the list
#  @element (out): the element
#> Return void

data modify storage io: element set from storage io: list[0]
data remove storage io: list[0]
