#
# math:mulf
#
# Multiply two numbers with arbitrary fixed point precision
#> Scores
#  @value0 (in): the first number to multiply
#  @value1 (in): the second number to multiply
#  @p (in): the fixed point digits
#> Return data
#  result

# Multiply numbers using scale factor
execute store result storage io: scale int 1.0 run scoreboard players get ::in value0
function math:mul/to_storage with storage io:

# Get from storage
return run function math:mul/from_storage
