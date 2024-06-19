#
# math:utils/get_power_of_two/0_3
#

execute if score ::in pow matches 0 run scoreboard players operation ::math pow_value = ::const 2E0
execute if score ::in pow matches 1 run scoreboard players operation ::math pow_value = ::const 2E1
execute if score ::in pow matches 2 run scoreboard players operation ::math pow_value = ::const 2E2
execute if score ::in pow matches 3 run scoreboard players operation ::math pow_value = ::const 2E3
