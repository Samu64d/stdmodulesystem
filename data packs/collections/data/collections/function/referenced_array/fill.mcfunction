#
# collections:referenced_array/fill
#
# Fill an array with an element
#> Scores
#  @size (in): the number of indicies to fill
#> Storage
#  @array_ref (in): the array reference
#  @element_ref (in): the element to copy
#> Return void

# Empty
function collections:referenced_array/empty

# Start loop
scoreboard players set ::collections::referenced_array index 0
function collections:referenced_array/fill/loop
