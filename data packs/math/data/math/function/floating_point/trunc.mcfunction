#
# math:floating_point/trunc
#
# Truncate the decimal places of a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Decompose number
function math:floating_point/common/decompose

# Check for exponent value
execute if score ::math::floating_point p matches -9..-1 run function math:floating_point/trunc/negative_p
execute if score ::math::floating_point p matches ..-10 run function math:floating_point/trunc/all_decimals

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
