#
# math:utils/get_power_of_ten/4_5
#

execute if score ::in pow matches 4 run scoreboard players operation ::math pow_value = ::const 10E4
execute if score ::in pow matches 5 run scoreboard players operation ::math pow_value = ::const 10E5
