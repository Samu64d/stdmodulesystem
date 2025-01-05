#
# math:order_of_magnitude/get_power_value/0_1
#

execute if score ::in value >= ::const 10E0 run scoreboard players operation ::math pow_value = ::const 10E0
execute if score ::in value >= ::const 10E1 run scoreboard players operation ::math pow_value = ::const 10E1
