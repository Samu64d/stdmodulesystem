#
# math:order_of_magnitude/get/0_3
#

execute if score ::in value < ::const 10E2 run function math:order_of_magnitude/get/0_1
execute if score ::in value >= ::const 10E2 run function math:order_of_magnitude/get/2_3
