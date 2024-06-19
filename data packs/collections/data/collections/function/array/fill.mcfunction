#
# collections:array/fill
#
# Fill an array with an element
#> Scores
#  @size (in): the number of indicies to fill
#> Storage
#  @array (inout): the array
#  @element (in): the element to copy
#> Return void

# Empty
function collections:array/empty

# Start loop
scoreboard players set ::collections::array index 0
function collections:array/fill/loop
