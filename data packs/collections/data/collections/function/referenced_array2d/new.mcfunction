#
# collections:referenced_array2d/new
#
# Create a new 2d array
#> Scores
#  @x_size (in): the 2d array x size
#  @y_size (in): the 2d array y size
#> Storage
#  @array_ref (in): the 2d array reference
#> Return void

# Create object
function collections:referenced_array2d/new/new with storage io:

# Initialize inner arrays
function collections:referenced_array2d/new/initialize
