#
# nmath:vector2f/get_x
#
# Get the x component of a float 2d vector
#> Storage
#  @vector (in): the float 2d vector
#  @x (out): the x component value
#> Return void

data modify storage io: x set from storage io: vector[0]
