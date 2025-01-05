#
# math:log10
#
# Calculate the logarithm base 10 of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  logarithm base 10 value

scoreboard players operation ::math value = ::in value

# In range
execute if score ::math value <= ::math::const FXP_DEF_MAG run function math:log10/in_range

# Out range
execute if score ::math value > ::math::const FXP_DEF_MAG run function math:log10/out_range

# Return data
return run scoreboard players get ::math log10
