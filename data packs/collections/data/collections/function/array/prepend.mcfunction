#
# collections:array/prepend
#
# Append an element at the end of an array
#> Storage
#  @array (inout): the array
#  @element (in): the element
#> Return void

data modify storage io: array prepend from storage io: element
