#
# nmath:vector3f/new_from_values
#
# Create a new float 3d vector from values
#> Storage
#  @x (in): the x component value
#  @y (in): the y component value
#  @z (in): the z component value
#  @vector (out): the float 3d vector
#> Return void

# Create vector
function nmath:vector3f/new

# X
data modify storage io: vector[0] set from storage io: x

# Y
data modify storage io: vector[1] set from storage io: y

# Z
data modify storage io: vector[2] set from storage io: z
