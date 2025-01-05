#
# nmath:vector3d/set_z
#
# Set the z component of a double 3d vector
#> Storage
#  @vector (in): the double 3d vector
#  @z (in): the z component
#> Return void

data modify storage io: vector[2] set from storage io: z
