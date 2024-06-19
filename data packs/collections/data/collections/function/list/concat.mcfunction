#
# collections:list/concat
#
# Copy all elements of the second list into the first list
#> Storage
#  @list0 (inout): the first list
#  @list1 (in): the second list
#> Return void

data modify storage io: list0 append from storage io: list1[]
