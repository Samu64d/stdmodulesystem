#
# nmath:vector3d/set_x
#
# Set the x component of a double 3d vector
#> Storage
#  @vector (in): the double 3d vector
#  @x (in): the x component
#> Return void

data modify storage io: vector[0] set from storage io: x
