#
# math:cbrtf
#
# Calculate the suare root of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  square root value

# Calculate 1
scoreboard players operation ::in pow = ::in p
execute store result score ::math cbrt run function math:utils/get_power_of_ten

# Calculate 3
scoreboard players set ::math three_value 3
scoreboard players operation ::math three_value *= ::math cbrt

# Loop
execute unless score ::in value matches ..-1 run function math:cbrtf/loop

# Return data
return run scoreboard players get ::math cbrt
