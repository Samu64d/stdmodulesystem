#
# math:utils/get_digit
#
# Get the nth digit of a number
#> Scores
#  @value (in): the number
#  @n (in): digit index
#> Return data
#  digit value

scoreboard players operation ::math digit = ::in value
execute if score ::math digit matches ..-1 run scoreboard players operation ::math digit *= ::const NEGONE
scoreboard players operation ::in pow = ::in n
execute store result score ::math pow_value run function math:utils/get_power_of_ten
scoreboard players operation ::math digit /= ::math pow_value
scoreboard players operation ::math digit %= ::int 10

# Return data
return run scoreboard players get ::math digit
