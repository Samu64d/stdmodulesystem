#
# collections:array/fillzero
#
# Fill an array with 0s
#> Scores
#  @size (in): the number of indicies to fill
#> Storage
#  @array (inout): the array
#> Return void

data modify storage io: element set value 0
function collections:array/fill
