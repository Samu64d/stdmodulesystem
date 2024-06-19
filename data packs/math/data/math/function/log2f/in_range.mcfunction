#
# math:log2f/in_range
#

# Rescale input
scoreboard players operation ::in p = ::math p
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:log2/check_domain

# Rescale output
scoreboard players operation ::in p = ::math p
execute if score ::in value matches ..34 run scoreboard players add ::in p 1
scoreboard players operation ::in value = ::out log2
execute store result score ::math log2 run function math:bkm/scaling/scale_output
