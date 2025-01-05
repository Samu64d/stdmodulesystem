#
# utils:bounding_box2di/get_bounds
#
# Get the bounds of a bounding box
#> Scores
#  @x0 (out): lower bound x value
#  @z0 (out): lower bound z value
#  @x1 (out): upper bound x value
#  @z1 (out): upper bound z value
#> Storage
#  @bounding_box (in): the bounding box
#> Return void

# Lower bound
function utils:bounding_box2di/get_lower_bound
scoreboard players operation ::out x0 = ::out x
scoreboard players operation ::out z0 = ::out z

# Upper bound
function utils:bounding_box2di/get_upper_bound
scoreboard players operation ::out x1 = ::out x
scoreboard players operation ::out z1 = ::out z
