#
# math:invf
#
# Get the inverse of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  inverse value

# Divide by one
scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten
scoreboard players operation ::in value0 = ::math mag_value
scoreboard players operation ::in value1 = ::in value
return run function math:divf
