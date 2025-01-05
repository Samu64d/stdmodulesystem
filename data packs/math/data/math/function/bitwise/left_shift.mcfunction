#
# math:bitwise/left_shift
#
# Shift to the left of n bits a binary value of an integer number
#> Scores
#  @value (in): the number
#  @n (in): the shift pass
#> Return data
#  shifted number value

# Calculate
execute if score ::in n >= ::const MAX_BIT run scoreboard players set ::in value 0
execute if score ::in n matches 0.. if score ::in n < ::const MAX_BIT run function math:bitwise/left_shift/calc

# Return data
return run scoreboard players get ::in value
