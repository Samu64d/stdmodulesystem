#
# collections:referenced_array2d/get_size
#
# Get the size of a 2d array
#> Scores
#  @x_size (out): the 2d array x size
#  @y_size (out): the 2d array y size
#> Storage
#  @array_ref (in): the 2d array reference
#> Return void

# Get x size
execute store result score ::out x_size run data get storage io: array.x_size 1.0

# Get y size
execute store result score ::out y_size run data get storage io: array.y_size 1.0
