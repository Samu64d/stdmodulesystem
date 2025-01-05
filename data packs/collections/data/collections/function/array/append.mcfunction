#
# collections:array/append
#
# Append an element at the end of an array
#> Storage
#  @array (inout): the array
#  @element (in): the element
#> Return void

data modify storage io: array append from storage io: element
