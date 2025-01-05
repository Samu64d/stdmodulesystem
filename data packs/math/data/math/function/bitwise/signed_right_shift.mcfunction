#
# math:bitwise/signed_right_shift
#
# Shift to the right of n bits a signed binary value of an integer number
#> Scores
#  @value (in): the number
#  @n (in): the shift pass
#> Return data
#  shifted number value

# Calculate
execute if score ::in n matches 31.. run function math:bitwise/signed_right_shift/full_shift
execute if score ::in n matches 0..30 run function math:bitwise/signed_right_shift/calc

# Return data
return run scoreboard players get ::in value
