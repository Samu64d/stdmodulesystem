#
# collections:referenced_array3d/fill
#
# Fill a 3d array with an element
#> Storage
#  @array_ref (in): the 3d array reference
#  @element (in): the element to copy
#> Return void

# Get array size
function collections:referenced_array3d/get_size

scoreboard players set ::collections::referenced_array3d x_index 0
execute if score ::collections::referenced_array3d x_size matches 1.. run function collections:referenced_array3d/fill/x_loop
