#
# collections:array3d/new
#
# Create a new 3d array
#> Scores
#  @x_size (in): the 3d array x size
#  @y_size (in): the 3d array y size
#  @z_size (in): the 3d array z size
#> Storage
#  @array (out): the 3d array
#> Return void

# Create object
data modify storage io: array set value {data: [], x_size: 0, y_size: 0, z_size: 0}

# Set x size
execute store result storage io: array.x_size int 1.0 run scoreboard players get ::in x_size

# Set y size
execute store result storage io: array.y_size int 1.0 run scoreboard players get ::in y_size

# Set z size
execute store result storage io: array.z_size int 1.0 run scoreboard players get ::in z_size

# Initialize inner arrays
function collections:array3d/new/initialize
