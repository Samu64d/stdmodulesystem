#
# math:round
#
# Rounding a number to the nearest integer value with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  round value

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::in value
function stdmodulesystem:stack/push_score

# Get fractional part
execute store result score ::math fractional_part run function math:get_fractional_part
execute if score ::math fractional_part matches ..-1 run scoreboard players operation ::math fractional_part *= ::const NEGONE

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::in value = ::out stack_score

# Get integer part
execute store result score ::math round run function math:get_integer_part

# Add or remove one if the fractional part is greater than 0.5
scoreboard players set ::math half 5
scoreboard players operation ::math half *= ::math::const FXP_DEF_MAG
scoreboard players operation ::math half /= ::int 10
execute if score ::math fractional_part > ::math half if score ::math round matches ..-1 run scoreboard players operation ::math round -= ::math::const FXP_DEF_MAG
execute if score ::math fractional_part > ::math half if score ::math round matches 0.. run scoreboard players operation ::math round += ::math::const FXP_DEF_MAG

# Return data
return run scoreboard players get ::math round
