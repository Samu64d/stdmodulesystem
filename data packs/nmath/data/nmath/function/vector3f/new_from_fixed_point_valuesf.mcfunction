#
# nmath:vector3f/new_from_fixed_point_valuesf
#
# Create a new float 3d vector from values with arbitrary fixed point precision
#> Scores
#  @x (in): the x component value
#  @y (in): the y component value
#  @z (in): the z component value
#  @p (in): the fixed point digits
#> Storage
#  @vector (out): the float 3d vector
#> Return void

# Create vector
function nmath:vector3f/new

# Convert values

# X
scoreboard players operation ::in value = ::in x
function math:to_storage_floatf
data modify storage io: vector[0] set from storage io: result

# Y
scoreboard players operation ::in value = ::in y
function math:to_storage_floatf
data modify storage io: vector[1] set from storage io: result

# Z
scoreboard players operation ::in value = ::in z
function math:to_storage_floatf
data modify storage io: vector[2] set from storage io: result
