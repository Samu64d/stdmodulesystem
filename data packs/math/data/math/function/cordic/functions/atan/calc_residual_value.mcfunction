#
# math:cordic/functions/atan/calc_residual_value
#

scoreboard players operation ::math::cordic f = ::math::cordic y
scoreboard players operation ::math::cordic f *= ::const 10E3
scoreboard players operation ::in pow = ::math::cordic::const CRDC_FXP_OUT_SIZE
scoreboard players remove ::in pow 3
execute store result score ::math::cordic pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::math::cordic x /= ::math::cordic pow_value
scoreboard players operation ::math::cordic f /= ::math::cordic x
