#
# nmath:vector3f/set_x
#
# Set the x component of a float 3d vector
#> Storage
#  @vector (in): the float 3d vector
#  @x (in): the x component
#> Return void

data modify storage io: vector[0] set from storage io: x
