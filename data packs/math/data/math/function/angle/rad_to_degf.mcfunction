#
# math:angle/rad_to_degf
#
# Convert radians to degrees with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @p (in): the fixed point digits
#> Return data
#  angle measure expressed in degrees

# Deg = rad * 180 / π

# Get pi value expressed in degrees
scoreboard players operation ::in value = ::math::const PI_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

scoreboard players operation ::in angle *= ::math value

# Get pi value expressed in radians
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

scoreboard players operation ::in angle /= ::math value

# Return value
return run scoreboard players get ::in angle
