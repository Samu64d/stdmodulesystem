#
# math:order_of_magnitude/get_power_value/4_5
#

execute if score ::in value >= ::const 10E4 run scoreboard players operation ::math pow_value = ::const 10E4
execute if score ::in value >= ::const 10E5 run scoreboard players operation ::math pow_value = ::const 10E5
