#
# math:bkm/scaling/scale_output
#

# Calculate scale factor
scoreboard players operation ::in pow = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::in pow -= ::in p
execute store result score ::math::bkm mag_value run function math:utils/get_power_of_ten

# Rescale value
scoreboard players operation ::math trunc_sign = ::in value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
scoreboard players operation ::in value /= ::math::bkm mag_value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Return data
return run scoreboard players get ::in value
