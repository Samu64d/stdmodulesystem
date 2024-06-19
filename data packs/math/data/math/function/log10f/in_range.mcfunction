#
# math:log10f/in_range
#

# Rescale input
scoreboard players operation ::in p = ::math p
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:bkm/functions/log10

# Rescale output
scoreboard players operation ::in value = ::out log10
scoreboard players operation ::in p = ::math p
execute store result score ::math log10 run function math:bkm/scaling/scale_output
