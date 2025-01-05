#
# nmath:vector2d/new_from_values
#
# Create a new double 2d vector from values
#> Storage
#  @x (in): the x component value
#  @y (in): the y component value
#  @vector (out): the double 2d vector
#> Return void

# Create vector
function nmath:vector2d/new

# X
data modify storage io: vector[0] set from storage io: x

# Y
data modify storage io: vector[1] set from storage io: y
