#
# math:angle/rad_mod_1_pi_2f
#
# Limit the value of an angle, expressed in radians, to the range (0; π/2) with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle
#  @p (in): the fixed point digits
#> Return data
#  angle value

# Get 1/2 pi value
scoreboard players operation ::in value = ::math::const 1_PI_2
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

# Mod 1/2 pi
scoreboard players operation ::in angle %= ::math value

# Return value
return run scoreboard players get ::in angle
