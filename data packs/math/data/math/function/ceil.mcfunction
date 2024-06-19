#
# math:ceil
#
# Get the least integer value greater than or equal of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  ceil value

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::in value
function stdmodulesystem:stack/push_score

# Get fractional part
execute store result score ::math fractional_part run function math:get_fractional_part

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::in value = ::out stack_score

# Get integer part
execute store result score ::math ceil run function math:get_integer_part

# Add one if the fractional part is positive
execute if score ::math fractional_part matches 1.. run scoreboard players operation ::math ceil += ::math::const FXP_DEF_MAG

# Return data
return run scoreboard players get ::math ceil
