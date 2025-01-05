#
# collections:array2d/fill
#
# Fill a 2d array with an element
#> Storage
#  @array (inout): the 2d array
#  @element (in): the element to copy
#> Return void

# Get array size
function collections:array2d/get_size

scoreboard players set ::in x 0
execute if score ::out x_size matches 1.. run function collections:array2d/fill/x_loop
