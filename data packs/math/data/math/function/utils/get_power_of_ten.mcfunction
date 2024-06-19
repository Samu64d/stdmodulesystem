#
# math:utils/get_power_of_ten
#
# Get the p power of 10, with p as a positive integer in range [0, 9]
#> Scores
#  @pow (in): the power
#> Return data
#  power value

# Calculate power
execute if score ::in pow matches 0..7 run function math:utils/get_power_of_ten/0_7
execute if score ::in pow matches 8..9 run function math:utils/get_power_of_ten/8_9

# Return data
return run scoreboard players get ::math pow_value
