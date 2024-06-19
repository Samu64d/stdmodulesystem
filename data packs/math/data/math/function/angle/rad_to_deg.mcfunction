#
# math:angle/rad_to_deg
#
# Convert radians to degrees with fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#> Return data
#  angle measure expressed in degrees

# Deg = rad * 180 / π
scoreboard players operation ::in angle *= ::math::const FXP_PI_DEG
scoreboard players operation ::in angle /= ::math::const FXP_PI

# Return value
return run scoreboard players get ::in angle
