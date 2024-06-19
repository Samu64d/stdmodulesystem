#
# collections:referenced_array3d/new
#
# Create a new 3d array
#> Scores
#  @x_size (in): the 3d array x size
#  @y_size (in): the 3d array y size
#  @z_size (in): the 3d array z size
#> Storage
#  @array_ref (in): the 3d array reference
#> Return void

# Create object
function collections:referenced_array3d/new/new with storage io:

# Initialize inner arrays
function collections:referenced_array3d/new/initialize
