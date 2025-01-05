#
# math:floating_point/from_score
#
# Cast a score to a floating point number
#> Scores
#  @value (in): the score
#> Storage
#  @result (out): the result value
#> Return void

# Compute exponent
scoreboard players set ::math::floating_point p 0

# Compute number
scoreboard players operation ::math::floating_point number = ::in value

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
