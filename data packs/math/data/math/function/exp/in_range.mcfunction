#
# math:exp/in_range
#

# Rescale input
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:bkm/functions/exp

# Rescale output
scoreboard players operation ::in value = ::out exp
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math exp run function math:bkm/scaling/scale_output
