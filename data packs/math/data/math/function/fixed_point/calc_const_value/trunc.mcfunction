#
# math:fixed_point/calc_const_value/trunc
#

scoreboard players operation ::in pow = ::in size
scoreboard players operation ::in pow -= ::in p
execute store result score ::math pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::math trunc_sign = ::in value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
scoreboard players operation ::in value /= ::math pow_value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
