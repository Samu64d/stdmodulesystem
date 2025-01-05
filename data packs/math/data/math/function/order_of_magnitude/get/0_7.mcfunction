#
# math:order_of_magnitude/get/0_7
#

execute if score ::in value < ::const 10E4 run function math:order_of_magnitude/get/0_3
execute if score ::in value >= ::const 10E4 run function math:order_of_magnitude/get/4_7
