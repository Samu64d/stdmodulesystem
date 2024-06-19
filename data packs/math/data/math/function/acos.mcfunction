#
# math:acos
#
# Get the arccosine value of a given ratio with fixed point precision
#> Scores
#  @t (in): the ratio value
#> Return data
#  arccosine value

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/acos

# Rescale output
scoreboard players operation ::in value = ::out acos
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math acos run function math:cordic/scaling/scale_output

# Return data
return run scoreboard players get ::math acos
