#
# math:cordic/scaling/scale_input
#

# Calculate scale factor
scoreboard players operation ::in pow = ::math::cordic::const CRDC_FXP_IN_SIZE
scoreboard players operation ::in pow -= ::in p
execute store result score ::math::cordic mag_value run function math:utils/get_power_of_ten

# Rescale value
scoreboard players operation ::in value *= ::math::cordic mag_value

# Return data
return run scoreboard players get ::in value
