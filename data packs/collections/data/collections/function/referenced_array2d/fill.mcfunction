#
# collections:referenced_array2d/fill
#
# Fill a 2d array with an element
#> Storage
#  @array_ref (in): the 2d array reference
#  @element_ref (in): the element to copy reference
#> Return void

# Get array size
function collections:referenced_array2d/get_size

scoreboard players set ::in x 0
execute if score ::out x_size matches 1.. run function collections:referenced_array2d/fill/x_loop
