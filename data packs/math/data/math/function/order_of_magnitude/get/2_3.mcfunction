#
# math:order_of_magnitude/get/2_3
#

execute if score ::in value >= ::const 10E2 run scoreboard players set ::math p 2
execute if score ::in value >= ::const 10E3 run scoreboard players set ::math p 3
