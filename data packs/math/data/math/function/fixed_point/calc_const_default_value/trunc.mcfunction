#
# math:fixed_point/calc_const_default_value/trunc
#

scoreboard players operation ::in pow = ::in size
scoreboard players operation ::in pow -= ::math::const FXP_DEF_SIZE
execute store result score ::math pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::in value /= ::math pow_value
