#
# math:logf/in_range
#

# Rescale input
scoreboard players operation ::in p = ::math p
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:bkm/functions/log

# Rescale output
scoreboard players operation ::in value = ::out log
scoreboard players operation ::in p = ::math p
execute store result score ::math log run function math:bkm/scaling/scale_output
