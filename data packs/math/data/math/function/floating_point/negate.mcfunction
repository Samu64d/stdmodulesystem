#
# math:floating_point/negate
#
# Negate a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Decompose number
function math:floating_point/common/decompose

scoreboard players operation ::math::floating_point number *= ::const NEGONE

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
