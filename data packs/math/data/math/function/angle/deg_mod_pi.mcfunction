#
# math:angle/deg_mod_pi
#
# Limit the value of an angle, expressed in degrees, to the range (0; π) with fixed point precision
#> Scores
#  @angle (in): the angle
#> Return data
#  angle value

# Mod 2 pi
scoreboard players operation ::in angle %= ::math::const FXP_PI_DEG

# Return value
return run scoreboard players get ::in angle
