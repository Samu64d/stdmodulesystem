#
# math:utils/get_power_of_ten/2_3
#

execute if score ::in pow matches 2 run scoreboard players operation ::math pow_value = ::const 10E2
execute if score ::in pow matches 3 run scoreboard players operation ::math pow_value = ::const 10E3
