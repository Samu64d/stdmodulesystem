#
# nmath:vector2f/to_fixed_point_values
#
# Convert a float 2d vector to values with fixed point precision
#> Scores
#  @p (in): the fixed point digits
#  @x (out): the x component value
#  @y (out): the y component value
#> Storage
#  @vector (in): the vector
#> Return void

# X
data modify storage io: value set from storage io: vector[0]
execute store result score ::out x run function math:from_storage

# Y
data modify storage io: value set from storage io: vector[1]
execute store result score ::out y run function math:from_storage
