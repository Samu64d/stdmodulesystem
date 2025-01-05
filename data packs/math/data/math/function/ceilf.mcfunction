#
# math:ceilf
#
# Get the least integer value greater than or equal of a number with arbitrary fixed point precision
#> Scores
#  @value (in): the number
#  @p (in): the fixed point digits
#> Return data
#  ceil value

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::in value
function stdmodulesystem:stack/push_score

# Get fractional part
execute store result score ::math fractional_part run function math:get_fractional_partf

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::in value = ::out stack_score

# Get integer part
execute store result score ::math ceil run function math:get_integer_partf

# Add one if the fractional part is positive
scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten
execute if score ::math fractional_part matches 1.. run scoreboard players operation ::math ceil += ::math mag_value

# Return data
return run scoreboard players get ::math ceil
