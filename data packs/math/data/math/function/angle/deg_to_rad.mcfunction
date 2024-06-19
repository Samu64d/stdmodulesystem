#
# math:angle/deg_to_rad
#
# Convert degrees to radians with fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in degrees
#> Return data
#  angle value expressed in radians

# Rad = deg * π / 180
scoreboard players operation ::in angle *= ::math::const FXP_PI
scoreboard players operation ::in angle /= ::math::const FXP_PI_DEG

# Return value
return run scoreboard players get ::in angle
