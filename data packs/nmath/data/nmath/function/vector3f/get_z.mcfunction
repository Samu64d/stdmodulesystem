#
# nmath:vector3f/get_z
#
# Get the z component of a float 3d vector
#> Storage
#  @vector (in): the float 3d vector
#  @z (out): the z component value
#> Return void

data modify storage io: z set from storage io: vector[2]
