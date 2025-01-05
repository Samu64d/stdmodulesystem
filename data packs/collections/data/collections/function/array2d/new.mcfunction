#
# collections:array2d/new
#
# Create a new 2d array
#> Scores
#  @x_size (in): the 2d array x size
#  @y_size (in): the 2d array y size
#> Storage
#  @array (out): the 2d array
#> Return void

# Create object
data modify storage io: array set value {data: [], x_size: 0, y_size: 0}

# Set x size
execute store result storage io: array.x_size int 1.0 run scoreboard players get ::in x_size

# Set y size
execute store result storage io: array.y_size int 1.0 run scoreboard players get ::in y_size

# Initialize inner arrays
function collections:array2d/new/initialize
