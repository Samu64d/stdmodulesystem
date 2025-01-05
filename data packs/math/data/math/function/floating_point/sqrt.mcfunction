#
# math:floating_point/sqrt
#
# Calculate the square root of a floating point number
#> Scores
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

data modify storage math:volatile floating_point.sqrt_argument set from storage io: value

# Calculate initial guess
data modify storage math:volatile floating_point.sqrt set from storage math:static floating_point.ONE

# Start loop
scoreboard players set ::math::floating_point sqrt_iterations 0
data modify storage io: value0 set from storage io: value
data modify storage io: value1 set from storage math:static floating_point.ZERO
execute unless function math:floating_point/compare/less run function math:floating_point/sqrt/loop
data modify storage io: result set from storage math:volatile floating_point.sqrt
