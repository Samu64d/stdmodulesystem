#
# math:order_of_magnitude/get_power_value
#
# Get the power value of the order of magnitude of an integer number, 0 return 0
#> Scores
#  @value (in): the integer number
#> Return data
#  order of magnitude value

# Calculate power
scoreboard players set ::math pow_value 0
execute if score ::in value matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
execute if score ::in value < ::const 10E8 run function math:order_of_magnitude/get_power_value/0_7
execute if score ::in value >= ::const 10E8 run function math:order_of_magnitude/get_power_value/8_9

# Return data
return run scoreboard players get ::math pow_value
