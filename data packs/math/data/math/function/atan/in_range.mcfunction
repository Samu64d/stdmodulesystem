#
# math:atan/in_range
#

# Rescale 1
scoreboard players operation ::in value = ::math::const FXP_DEF_MAG
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in x run function math:cordic/scaling/scale_input

# Rescale input
scoreboard players operation ::in value = ::in t
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in y run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/atan

# Rescale output
scoreboard players operation ::in value = ::out atan
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math atan run function math:cordic/scaling/scale_output
