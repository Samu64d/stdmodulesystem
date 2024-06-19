#
# math:acosf
#
# Get the arccosine value of a given ratio with arbitrary fixed point precision
#> Scores
#  @t (in): the ratio value
#  @p (in): the fixed point digits
#> Return data
#  arccosine value

scoreboard players operation ::math p = ::in p

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math p
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/acos

# Rescale output
scoreboard players operation ::in value = ::out acos
scoreboard players operation ::in p = ::math p
execute store result score ::math acos run function math:cordic/scaling/scale_output

# Return data
return run scoreboard players get ::math acos
