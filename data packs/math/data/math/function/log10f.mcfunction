#
# math:log10f
#
# Calculate the logarithm base 10 of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  logarithm base 10 value

scoreboard players operation ::math value = ::in value
scoreboard players operation ::math p = ::in p

scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten

# In range
execute if score ::math value <= ::math mag_value run function math:log10f/in_range

# Out range
execute if score ::math value > ::math mag_value run function math:log10f/out_range

# Return data
return run scoreboard players get ::math log10
