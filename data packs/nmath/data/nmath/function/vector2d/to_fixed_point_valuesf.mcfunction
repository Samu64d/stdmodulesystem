#
# nmath:vector2d/to_fixed_point_valuesf
#
# Convert a double 2d vector to values with arbitrary fixed point precision
#> Scores
#  @p (in): the fixed point digits
#  @x (out): the x component value
#  @y (out): the y component value
#> Storage
#  @vector (in): the vector
#> Return void

# X
data modify storage io: value set from storage io: vector[0]
execute store result score ::out x run function math:from_storagef

# Y
data modify storage io: value set from storage io: vector[1]
execute store result score ::out y run function math:from_storagef