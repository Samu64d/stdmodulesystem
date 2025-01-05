#
# math:order_of_magnitude/get/4_7
#

execute if score ::in value < ::const 10E6 run function math:order_of_magnitude/get/4_5
execute if score ::in value >= ::const 10E6 run function math:order_of_magnitude/get/6_7
