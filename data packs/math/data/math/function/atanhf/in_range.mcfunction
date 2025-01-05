#
# math:atanhf/in_range
#

# Rescale 1
scoreboard players set ::in value 1
scoreboard players set ::in p 0
execute store result score ::in x run function math:cordic/scaling/scale_input

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math p
execute store result score ::in y run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/atanh

# Rescale output
scoreboard players operation ::in value = ::out atanh
scoreboard players operation ::in p = ::math p
execute store result score ::math atanh run function math:cordic/scaling/scale_output
