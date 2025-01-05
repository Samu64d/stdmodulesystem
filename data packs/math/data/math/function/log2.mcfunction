#
# math:log2
#
# Calculate the logarithm base 2 of a number with fixed point precision
# Limitations: For values x < 0.00000043 an overflow will occur
#> Scores
#  @value (in): the number
#> Return data
#  logarithm base 2 value

scoreboard players operation ::math value = ::in value

# In range
execute if score ::math value <= ::math::const FXP_DEF_MAG run function math:log2/in_range

# Out range
execute if score ::math value > ::math::const FXP_DEF_MAG run function math:log2/out_range

# Return data
return run scoreboard players get ::math log2
