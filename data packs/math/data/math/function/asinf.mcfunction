#
# math:asinf
#
# Get the arcsine value of a given ratio with arbitrary fixed point precision
#> Scores
#  @t (in): the ratio value
#  @p (in): the fixed point digits
#> Return data
#  arcsine value

scoreboard players operation ::math p = ::in p

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math p
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/asin

# Rescale output
scoreboard players operation ::in value = ::out asin
scoreboard players operation ::in p = ::math p
execute store result score ::math asin run function math:cordic/scaling/scale_output

# Return data
return run scoreboard players get ::math acos
