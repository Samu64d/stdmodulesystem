#
# math:angle/deg_to_rad
#
# Convert degrees to radians with fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in degrees
#> Return data
#  angle value expressed in radians

# Rad = deg * π / 180

# Multiply
scoreboard players operation ::in value0 = ::in angle
scoreboard players operation ::in value1 = ::math::const FXP_PI
execute store result score ::in value0 run function math:mul

# Divide
scoreboard players operation ::in value1 = ::math::const FXP_PI_DEG
return run function math:div
