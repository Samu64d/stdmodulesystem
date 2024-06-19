#
# math:bitwise/get_bit
#
# Get the value of the n-th bit within an integer number
#> Scores
#  @value (in): the number
#  @n (in): the bit position starting from 1
#> Return data
#  value of the n-th bit

# Shift to the left
scoreboard players remove ::in n 1
execute store result score ::math bit run function math:bitwise/signed_right_shift

# Get value
scoreboard players operation ::math bit %= ::int 2

# Return data
return run scoreboard players get ::math bit
