#
# math:order_of_magnitude/get_power_value/8_9
#

execute if score ::in value >= ::const 10E8 run scoreboard players operation ::math pow_value = ::const 10E8
execute if score ::in value >= ::const 10E9 run scoreboard players operation ::math pow_value = ::const 10E9
