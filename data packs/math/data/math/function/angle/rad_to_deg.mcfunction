#
# math:angle/rad_to_deg
#
# Convert radians to degrees with fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#> Return data
#  angle measure expressed in degrees

# Multiply
scoreboard players operation ::in value0 = ::in angle
scoreboard players operation ::in value1 = ::math::const FXP_PI_DEG
execute store result score ::in value0 run function math:mul

# Divide
scoreboard players operation ::in value1 = ::math::const FXP_PI
return run function math:div
