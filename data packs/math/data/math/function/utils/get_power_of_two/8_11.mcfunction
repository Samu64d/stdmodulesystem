#
# math:utils/get_power_of_two/8_11
#

execute if score ::in pow matches 8 run scoreboard players operation ::math pow_value = ::const 2E8
execute if score ::in pow matches 9 run scoreboard players operation ::math pow_value = ::const 2E9
execute if score ::in pow matches 10 run scoreboard players operation ::math pow_value = ::const 2E10
execute if score ::in pow matches 11 run scoreboard players operation ::math pow_value = ::const 2E11
