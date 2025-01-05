#
# nmath:vector3f/get_x
#
# Get the x component of a float 3d vector
#> Storage
#  @vector (in): the float 3d vector
#  @x (out): the x component value
#> Return void

data modify storage io: x set from storage io: vector[0]
