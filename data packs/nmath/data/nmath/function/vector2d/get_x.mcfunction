#
# nmath:vector2d/get_x
#
# Get the x component of a double 2d vector
#> Storage
#  @vector (in): the double 2d vector
#  @x (out): the x component value
#> Return void

data modify storage io: x set from storage io: vector[0]
