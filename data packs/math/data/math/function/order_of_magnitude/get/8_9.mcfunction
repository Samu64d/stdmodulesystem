#
# math:order_of_magnitude/get/8_9
#

execute if score ::in value >= ::const 10E8 run scoreboard players set ::math p 8
execute if score ::in value >= ::const 10E9 run scoreboard players set ::math p 9
