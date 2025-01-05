#
# math:log10/in_range
#

# Rescale input
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:bkm/functions/log10

# Rescale output
scoreboard players operation ::in value = ::out log10
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math log10 run function math:bkm/scaling/scale_output
