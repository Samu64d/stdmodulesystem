#
# math:floating_point/from_fixed_point
#
# Cast a fixed point number to a floating point number
#> Scores
#  @value (in): the fixed point number
#  @p (in): the fixed point digits
#> Storage
#  @result (out): the result value
#> Return void

# Compute exponent
scoreboard players operation ::math::floating_point p = ::in p
scoreboard players operation ::math::floating_point p *= ::const NEGONE

# Compute number
scoreboard players operation ::math::floating_point number = ::in value

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
