#
# math:mul
#
# Multiply two numbers with fixed point precision
#> Scores
#  @value0 (in): the first number to multiply
#  @value1 (in): the second number to multiply
#> Return data
#  result

# Multiply numbers using scale factor
execute store result storage io: scale int 1.0 run scoreboard players get ::in value0
function math:mul/to_storage with storage io:

# Get from storage
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
return run function math:mul/from_storage
