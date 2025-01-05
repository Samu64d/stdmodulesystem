#
# nmath:vector3f/new_from_scores
#
# Create a new float 3d vector from scores
#> Scores
#  @x (in): the x component value
#  @y (in): the y component value
#  @z (in): the z component value
#> Storage
#  @vector (out): the float 3d vector
#> Return void

# Create vector
function nmath:vector3f/new

# X
execute store result storage io: vector[0] float 1.0 run scoreboard players get ::in x

# Y
execute store result storage io: vector[1] float 1.0 run scoreboard players get ::in y

# Z
execute store result storage io: vector[2] float 1.0 run scoreboard players get ::in z
