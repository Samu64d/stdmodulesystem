#
# math:asin
#
# Get the arcsine value of a given ratio with fixed point precision
#> Scores
#  @t (in): the ratio value
#> Return data
#  arcsine value

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/asin

# Rescale output
scoreboard players operation ::in value = ::out asin
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math asin run function math:cordic/scaling/scale_output

# Return data
return run scoreboard players get ::math asin
