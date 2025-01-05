#
# collections:referenced_array/fillzero
#
# Fill an array with 0s
#> Scores
#  @size (in): the number of indicies to fill
#> Storage
#  @array_ref (in): the array reference
#> Return void

data modify storage collections:volatile referenced_array.temp_zero set value 0
data modify storage io: element_ref set value "storage collections:volatile referenced_array.temp_zero"
function collections:referenced_array/fill
