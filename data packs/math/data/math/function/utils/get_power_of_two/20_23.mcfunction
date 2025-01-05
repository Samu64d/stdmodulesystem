#
# math:utils/get_power_of_two/20_23
#

execute if score ::in pow matches 20 run scoreboard players operation ::math pow_value = ::const 2E20
execute if score ::in pow matches 21 run scoreboard players operation ::math pow_value = ::const 2E21
execute if score ::in pow matches 22 run scoreboard players operation ::math pow_value = ::const 2E22
execute if score ::in pow matches 23 run scoreboard players operation ::math pow_value = ::const 2E23
