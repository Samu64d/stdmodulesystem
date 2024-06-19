#
# math:cosh/in_range
#

# Rescale input
scoreboard players operation ::in value = ::in angle
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in angle run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/cosh

# Rescale output
scoreboard players operation ::in value = ::out cosh
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math cosh run function math:cordic/scaling/scale_output
