#
# math:hashtables/scaling/scale_input
#

# Calculate scale factor
scoreboard players operation ::in pow = ::math::hashtables::const HASHTABLES_FXP_SIZE
scoreboard players operation ::in pow -= ::in p
execute store result score ::math::cordic mag_value run function math:utils/get_power_of_ten

# Rescale value
scoreboard players operation ::in value *= ::math::cordic mag_value

# Return data
return run scoreboard players get ::in value
