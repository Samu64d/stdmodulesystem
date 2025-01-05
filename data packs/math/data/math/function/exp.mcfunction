#
# math:exp
#
# Calculate the exponential value of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  exponential value

scoreboard players operation ::math value = ::in value

scoreboard players set ::math low_exp -19
scoreboard players operation ::math low_exp *= ::math::const FXP_DEF_MAG

# Very low values
execute if score ::math value < ::math low_exp run scoreboard players set ::math exp 0

# In range
execute if score ::math value >= ::math low_exp if score ::math value <= ::math::const FXP_DEF_MAG run function math:exp/in_range

# Out range
execute if score ::math value > ::math::const FXP_DEF_MAG run function math:exp/out_range

# Return data
return run scoreboard players get ::math exp
