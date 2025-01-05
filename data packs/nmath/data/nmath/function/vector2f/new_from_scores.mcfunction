#
# nmath:vector2f/new_from_scores
#
# Create a new float 2d vector from scores
#> Scores
#  @x (in): the x component value
#  @y (in): the y component value
#> Storage
#  @vector (out): the float 2d vector
#> Return void

# Create vector
function nmath:vector2f/new

# X
execute store result storage io: vector[0] float 1.0 run scoreboard players get ::in x

# Y
execute store result storage io: vector[1] float 1.0 run scoreboard players get ::in y
