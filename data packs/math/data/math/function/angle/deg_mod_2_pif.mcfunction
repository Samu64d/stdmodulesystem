#
# math:angle/deg_mod_2_pif
#
# Limit the value of an angle, expressed in degrees, to the range (0; 2π) with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle
#  @p (in): the fixed point digits
#> Return data
#  angle value

# Get 2 pi value
scoreboard players operation ::in value = ::math::const 2_PI_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

# Mod 2 pi
scoreboard players operation ::in angle %= ::math value

# Return value
return run scoreboard players get ::in angle
