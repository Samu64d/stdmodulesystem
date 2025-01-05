#
# math:order_of_magnitude/get
#
# Get the order of magnitude of an integer number, 0 return 0
#> Scores
#  @value (in): the integer number
#> Return data
#  order of magnitude value

# Get value
scoreboard players set ::math p 0
execute if score ::in value matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
execute if score ::in value < ::const 10E8 run function math:order_of_magnitude/get/0_7
execute if score ::in value >= ::const 10E8 run function math:order_of_magnitude/get/8_9

# Return data
return run scoreboard players get ::math p
