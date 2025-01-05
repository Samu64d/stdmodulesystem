#
# math:utils/get_power_of_ten/8_9
#

execute if score ::in pow matches 8 run scoreboard players operation ::math pow_value = ::const 10E8
execute if score ::in pow matches 9 run scoreboard players operation ::math pow_value = ::const 10E9
