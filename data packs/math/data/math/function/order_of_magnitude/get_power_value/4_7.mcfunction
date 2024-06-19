#
# math:order_of_magnitude/get_power_value/4_7
#

execute if score ::in value < ::const 10E6 run function math:order_of_magnitude/get_power_value/4_5
execute if score ::in value >= ::const 10E6 run function math:order_of_magnitude/get_power_value/6_7
