#
# math:sin2
#
# Get the sine value of a given angle in radians with fixed point precision
#  Method used: hashtables
#> Scores
#  @angle (in): the angle measure expressed in radians
#> Return data
#  sine value

# Limit range
scoreboard players operation ::math angle = ::in angle
function math:sin2_cos2/limit_range

# Rescale input
scoreboard players operation ::in value = ::math angle
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in angle run function math:hashtables/scaling/scale_input

# Calculate
function math:hashtables/functions/sin

# Rescale output
scoreboard players operation ::in value = ::out sin
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math sin run function math:hashtables/scaling/scale_output

# Return data
return run scoreboard players get ::math sin
