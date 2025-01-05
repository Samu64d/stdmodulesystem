#
# math:cbrt
#
# Calculate the cube root of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  cube root value

# Calculate 1
scoreboard players operation ::math cbrt = ::math::const FXP_DEF_MAG

# Calculate 3
scoreboard players set ::math three_value 3
scoreboard players operation ::math three_value *= ::math::const FXP_DEF_MAG

# Loop
execute unless score ::in value matches ..-1 run function math:cbrt/loop

# Return data
return run scoreboard players get ::math cbrt
