#
# nmath:vector2d/get_y
#
# Get the y component of a double 2d vector
#> Storage
#  @vector (in): the double 2d vector
#  @y (out): the y component value
#> Return void

data modify storage io: y set from storage io: vector[1]
