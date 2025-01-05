#
# collections:referenced_array3d/fillzero
#
# Fill a 3d array with 0s
#> Storage
#  @array_ref (in): the 3d array reference
#> Return void

data modify storage collections:volatile referenced_array3d.temp_zero set value 0
data modify storage io: element_ref set value "storage collections:volatile referenced_array3d.temp_zero"
function collections:referenced_array3d/fill
