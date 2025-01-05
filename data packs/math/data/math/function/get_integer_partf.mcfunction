#
# math:get_integer_partf
#
# Get the integer part of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  integer part

# Rescale value
scoreboard players operation ::in pow = ::in p
execute store result score ::math pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::math trunc_sign = ::in value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
scoreboard players operation ::in value /= ::math pow_value
scoreboard players operation ::in value *= ::math pow_value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Return data
return run scoreboard players get ::in value
