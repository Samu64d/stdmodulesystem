#
# math:log
#
# Calculate the natural logarithm of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  natural logarithm value

scoreboard players operation ::math value = ::in value

# In range
execute if score ::math value <= ::math::const FXP_DEF_MAG run function math:log/in_range

# Out range
execute if score ::math value > ::math::const FXP_DEF_MAG run function math:log/out_range

# Return data
return run scoreboard players get ::math log
