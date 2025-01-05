#
# math:angle/rad_mod_1_pi_2
#
# Limit the value of an angle, expressed in radians, to the range (0; π/2) with fixed point precision
#> Scores
#  @angle (in): the angle
#> Return data
#  angle value

# Mod 2 pi
scoreboard players operation ::in angle %= ::math::const FXP_1_PI_2

# Return value
return run scoreboard players get ::in angle
