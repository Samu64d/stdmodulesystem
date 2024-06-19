#
# math:atan2f/case_5
#

# Atan(y / x) = -1/2 pi
scoreboard players operation ::in value = ::math::const 1_PI_2
scoreboard players operation ::in size = ::math::const PI_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::math atan2 run function math:fixed_point/calc_const_value
scoreboard players operation ::math atan2 *= ::const NEGONE
