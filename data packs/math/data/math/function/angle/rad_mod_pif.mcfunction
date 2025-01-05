#
# math:angle/rad_mod_pif
#
# Limit the value of an angle, expressed in radians, to the range (0; π) with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle
#  @p (in): the fixed point digits
#> Return data
#  angle value

# Get pi value
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

# Mod pi
scoreboard players operation ::in angle %= ::math value

# Return value
return run scoreboard players get ::in angle
