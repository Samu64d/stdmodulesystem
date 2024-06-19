#
# math:order_of_magnitude/get_power_value/0_7
#

execute if score ::in value < ::const 10E4 run function math:order_of_magnitude/get_power_value/0_3
execute if score ::in value >= ::const 10E4 run function math:order_of_magnitude/get_power_value/4_7
