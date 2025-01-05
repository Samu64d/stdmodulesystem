#
# math:utils/get_power_of_ten/6_7
#

execute if score ::in pow matches 6 run scoreboard players operation ::math pow_value = ::const 10E6
execute if score ::in pow matches 7 run scoreboard players operation ::math pow_value = ::const 10E7
