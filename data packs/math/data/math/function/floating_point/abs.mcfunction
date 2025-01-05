#
# math:floating_point/abs
#
# Get the absolute value of a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Decompose number
function math:floating_point/common/decompose

execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
