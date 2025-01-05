#
# math:sqrt
#
# Calculate the square root of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  square root value

# Calculate initial guess
scoreboard players operation ::math sqrt = ::math::const FXP_DEF_MAG

# Calculate 2
scoreboard players set ::math two_value 2
scoreboard players operation ::math two_value *= ::math::const FXP_DEF_MAG

# Start loop
execute unless score ::in value matches ..-1 run function math:sqrt/loop

# Return data
return run scoreboard players get ::math sqrt
