#
# math:order_of_magnitude/get_power_value/6_7
#

execute if score ::in value >= ::const 10E6 run scoreboard players operation ::math pow_value = ::const 10E6
execute if score ::in value >= ::const 10E7 run scoreboard players operation ::math pow_value = ::const 10E7
