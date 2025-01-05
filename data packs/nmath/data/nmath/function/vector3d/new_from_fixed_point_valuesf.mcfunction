#
# nmath:vector3d/new_from_fixed_point_valuesf
#
# Create a new double 3d vector from values with arbitrary fixed point precision
#> Scores
#  @x (in): the x component value
#  @y (in): the y component value
#  @z (in): the z component value
#  @p (in): the fixed point digits
#> Storage
#  @vector (out): the double 3d vector
#> Return void

# Create vector
function nmath:vector3d/new

# Convert values

# X
scoreboard players operation ::in value = ::in x
function math:to_storage_doublef
data modify storage io: vector[0] set from storage io: result

# Y
scoreboard players operation ::in value = ::in y
function math:to_storage_doublef
data modify storage io: vector[1] set from storage io: result

# Z
scoreboard players operation ::in value = ::in z
function math:to_storage_doublef
data modify storage io: vector[2] set from storage io: result
