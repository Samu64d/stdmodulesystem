#
# collections:list/merge_all_elements
#
# Merge all elements from a list with a provided element. The element type must be "mergeable"
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return data
#  boolean flag

return run data modify storage io: list[] merge from storage io: element
