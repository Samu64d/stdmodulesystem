#
# math:utils/get_power_of_two
#
# Get the p power of 2, with p as a positive integer in range [0, 31]
#> Scores
#  @pow (in): the power
#> Return data
#  power value

# Calculate power
execute if score ::in pow matches 0..15 run function math:utils/get_power_of_two/0_15
execute if score ::in pow matches 16..31 run function math:utils/get_power_of_two/16_31

# Return data
return run scoreboard players get ::math pow_value
