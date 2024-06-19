#
# math:atan2f/case_2
#

# Compute atan(y / x)
function math:atan2f/check_range

# Check for range
execute if score ::math is_in_range = ::const FALSE run scoreboard players operation ::math atan2 *= ::const NEGONE
execute if score ::math is_in_range = ::const FALSE run return 0

# Add pi
scoreboard players operation ::in value = ::math::const PI
scoreboard players operation ::in size = ::math::const PI_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::math value run function math:fixed_point/calc_const_value
scoreboard players operation ::math atan2 += ::math value
