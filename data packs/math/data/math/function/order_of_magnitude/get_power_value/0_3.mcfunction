#
# math:order_of_magnitude/get_power_value/0_3
#

execute if score ::in value < ::const 10E2 run function math:order_of_magnitude/get_power_value/0_1
execute if score ::in value >= ::const 10E2 run function math:order_of_magnitude/get_power_value/2_3
