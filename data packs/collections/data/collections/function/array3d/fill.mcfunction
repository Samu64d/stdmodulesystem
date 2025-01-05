#
# collections:array3d/fill
#
# Fill a 3d array with an element
#> Storage
#  @array (inout): the 3d array
#  @element (in): the element to copy
#> Return void

# Get array size
function collections:array3d/get_size

scoreboard players set ::in x 0
execute if score ::out x_size matches 1.. run function collections:array3d/fill/x_loop
