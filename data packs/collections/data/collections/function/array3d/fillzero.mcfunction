#
# collections:array3d/fillzero
#
# Fill a 3d array with 0s
#> Storage
#  @array (inout): the 3d array
#> Return void

data modify storage io: element set value 0
function collections:array3d/fill
