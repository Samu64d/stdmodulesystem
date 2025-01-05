#
# math:cordic/functions/asin_acos/calc_acos_residual_value
#

scoreboard players operation ::math::cordic f = ::math::cordic t
scoreboard players operation ::math::cordic f -= ::math::cordic x
scoreboard players operation ::math::cordic f *= ::math::cordic 10E3
scoreboard players operation ::in p = ::math::cordic::const CRDC_FXP_OUT_SIZE
scoreboard players remove ::in p 3
execute store result score ::math::cordic pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::math::cordic y /= ::math::cordic pow_value
scoreboard players operation ::math::cordic f /= ::math::cordic y
