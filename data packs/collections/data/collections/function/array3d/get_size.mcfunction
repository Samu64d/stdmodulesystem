#
# collections:array3d/get_size
#
# Get the size of a 3d array
#> Scores
#  @x_size (out): the 3d array x size
#  @y_size (out): the 3d array y size
#  @z_size (out): the 3d array z size
#> Storage
#  @array (in): the 3d array
#> Return void

# Get x size
execute store result score ::out x_size run data get storage io: array.x_size 1.0

# Get y size
execute store result score ::out y_size run data get storage io: array.y_size 1.0

# Get z size
execute store result score ::out z_size run data get storage io: array.z_size 1.0
