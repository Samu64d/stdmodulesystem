#
# nmath:vector2f/get_y
#
# Get the y component of a float 2d vector
#> Storage
#  @vector (in): the float 2d vector
#  @y (out): the y component value
#> Return void

data modify storage io: y set from storage io: vector[1]
