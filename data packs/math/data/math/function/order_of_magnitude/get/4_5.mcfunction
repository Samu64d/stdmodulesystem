#
# math:order_of_magnitude/get/4_5
#

execute if score ::in value >= ::const 10E4 run scoreboard players set ::math p 4
execute if score ::in value >= ::const 10E5 run scoreboard players set ::math p 5
