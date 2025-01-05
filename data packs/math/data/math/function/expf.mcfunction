#
# math:expf
#
# Calculate the exponential value of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  exponential value

scoreboard players operation ::math value = ::in value
scoreboard players operation ::math p = ::in p

scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten

scoreboard players set ::math low_exp -19
scoreboard players operation ::math low_exp *= ::math mag_value

# Very low values
execute if score ::math value < ::math low_exp run scoreboard players set ::math exp 0

# In range
execute if score ::math value >= ::math low_exp if score ::math value <= ::math mag_value run function math:expf/in_range

# Out range
execute if score ::math value > ::math mag_value run function math:expf/out_range

# Return data
return run scoreboard players get ::math exp
