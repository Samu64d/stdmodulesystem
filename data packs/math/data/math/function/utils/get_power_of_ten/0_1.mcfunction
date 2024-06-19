#
# math:utils/get_power_of_ten/0_1
#

execute if score ::in pow matches 0 run scoreboard players operation ::math pow_value = ::const 10E0
execute if score ::in pow matches 1 run scoreboard players operation ::math pow_value = ::const 10E1
