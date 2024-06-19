#
# math:utils/get_power_of_two/4_7
#

execute if score ::in pow matches 4 run scoreboard players operation ::math pow_value = ::const 2E4
execute if score ::in pow matches 5 run scoreboard players operation ::math pow_value = ::const 2E5
execute if score ::in pow matches 6 run scoreboard players operation ::math pow_value = ::const 2E6
execute if score ::in pow matches 7 run scoreboard players operation ::math pow_value = ::const 2E7
