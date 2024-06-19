#
# math:order_of_magnitude/get_power_value/2_3
#

execute if score ::in value >= ::const 10E2 run scoreboard players operation ::math pow_value = ::const 10E2
execute if score ::in value >= ::const 10E3 run scoreboard players operation ::math pow_value = ::const 10E3
