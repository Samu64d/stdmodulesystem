#
# math:sqrtf
#
# Calculate the square root of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  square root value

# Calculate initial guess
scoreboard players operation ::in pow = ::in p
execute store result score ::math sqrt run function math:utils/get_power_of_ten

# Calculate 2
scoreboard players set ::math two_value 2
scoreboard players operation ::math two_value *= ::math sqrt

# Start loop
execute unless score ::in value matches ..-1 run function math:sqrtf/loop

# Return data
return run scoreboard players get ::math sqrt
