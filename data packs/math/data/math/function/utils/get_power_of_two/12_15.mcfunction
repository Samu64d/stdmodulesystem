#
# math:utils/get_power_of_two/12_15
#

execute if score ::in pow matches 12 run scoreboard players operation ::math pow_value = ::const 2E12
execute if score ::in pow matches 13 run scoreboard players operation ::math pow_value = ::const 2E13
execute if score ::in pow matches 14 run scoreboard players operation ::math pow_value = ::const 2E14
execute if score ::in pow matches 15 run scoreboard players operation ::math pow_value = ::const 2E15
