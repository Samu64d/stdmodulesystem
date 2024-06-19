#
# math:tanhf
#
# Get the hyperbolic tangent value of a given angle in radians with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @p (in): the fixed point digits
#> Return data
#  hyperbolic tangent value

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::in angle
function stdmodulesystem:stack/push_score

# Calculate sinh
execute store result score ::math sinh run function math:sinhf

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::in angle = ::out stack_score

# Calculate cosh
execute store result score ::in value1 run function math:coshf

# Calculate
scoreboard players operation ::in value0 = ::math sinh
execute store result score ::math tanh run function math:divf

# Return data
return run scoreboard players get ::math tanh
