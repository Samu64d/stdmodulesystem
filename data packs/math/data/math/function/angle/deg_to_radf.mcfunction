#
# math:angle/deg_to_radf
#
# Convert degrees to radians with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in degrees
#  @p (in): the fixed point digits
#> Return data
#  angle value expressed in radians

# Rad = deg * π / 180

# Get pi value expressed in radians
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

scoreboard players operation ::in angle *= ::math value

# Get pi value expressed in degrees
scoreboard players operation ::in value = ::math::const PI_DEG
scoreboard players operation ::in size = ::math::const PI_DEG_SIZE
execute store result score ::math value run function math:fixed_point/calc_const_value

scoreboard players operation ::in angle /= ::math value

# Return value
return run scoreboard players get ::in angle
