#
# math:acosh/in_range
#

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in t run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/acosh

# Rescale output
scoreboard players operation ::in value = ::out acosh
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math acosh run function math:cordic/scaling/scale_output
