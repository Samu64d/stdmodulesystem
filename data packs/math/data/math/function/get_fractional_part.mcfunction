#
# math:get_fractional_part
#
# Get the fractional part of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  fractional part

# Mod value
scoreboard players operation ::math trunc_sign = ::in value
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE
scoreboard players operation ::in value %= ::math::const FXP_DEF_MAG
execute if score ::math trunc_sign matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Return data
return run scoreboard players get ::in value
