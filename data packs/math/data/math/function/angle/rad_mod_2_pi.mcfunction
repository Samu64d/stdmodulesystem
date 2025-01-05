#
# math:angle/rad_mod_2_pi
#
# Limit the value of an angle, expressed in radians, to the range (0; 2π) with fixed point precision
#> Scores
#  @angle (in): the angle
#> Return data
#  angle value

# Mod 2 pi
scoreboard players operation ::in angle %= ::math::const FXP_2_PI

# Return value
return run scoreboard players get ::in angle
