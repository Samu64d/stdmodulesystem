#
# math:bitwise/unary_not
#
# Negate bits of a binary value (one's complement) of an integer number
#> Scores
#  @value (in): the number
#> Return data
#  one's complement of the number

scoreboard players operation ::in value *= ::const NEGONE
scoreboard players remove ::in value 1

# Return data
return run scoreboard players get ::in value
