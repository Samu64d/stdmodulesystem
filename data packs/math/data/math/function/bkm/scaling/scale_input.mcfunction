#
# math:bkm/scaling/scale_input
#

# Calculate scale factor
scoreboard players operation ::in pow = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::in pow -= ::in p
execute store result score ::math::bkm mag_value run function math:utils/get_power_of_ten

# Rescale value
scoreboard players operation ::in value *= ::math::bkm mag_value

# Return data
return run scoreboard players get ::in value
