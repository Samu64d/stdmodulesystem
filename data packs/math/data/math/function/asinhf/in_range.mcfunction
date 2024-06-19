#
# math:asinhf/in_range
#

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math p
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/asinh

# Rescale output
scoreboard players operation ::in value = ::out asinh
scoreboard players operation ::in p = ::math p
execute store result score ::math asinh run function math:cordic/scaling/scale_output
