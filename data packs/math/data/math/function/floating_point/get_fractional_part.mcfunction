#
# math:floating_point/get_fractional_part
#
# Get the fractional part of a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Decompose number
function math:floating_point/common/decompose

# Check for exponent value
execute if score ::math::floating_point p matches -9..-1 run function math:floating_point/get_fractional_part/negative_p
execute if score ::math::floating_point p matches 0.. run function math:floating_point/get_fractional_part/positive_p

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
