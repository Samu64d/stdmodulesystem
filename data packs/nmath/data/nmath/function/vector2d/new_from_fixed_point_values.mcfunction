#
# nmath:vector2d/new_from_fixed_point_values
#
# Create a new double 2d vector from values with fixed point precision
#> Scores
#  @x (in): the x component value
#  @y (in): the y component value
#> Storage
#  @vector (out): the double 2d vector
#> Return void

# Create vector
function nmath:vector2d/new

# Convert values

# X
scoreboard players operation ::in value = ::in x
function math:to_storage_double
data modify storage io: vector[0] set from storage io: result

# Y
scoreboard players operation ::in value = ::in y
function math:to_storage_double
data modify storage io: vector[1] set from storage io: result
