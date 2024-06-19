#
# math:floating_point/has_fractional_part
#
# Check if a floating point number has a fractional part
#> Storage
#  @value (in): the floating point number
#> Return data
#  boolean flag

# Get fractional part
function math:floating_point/get_fractional_part

# Compare with zero
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:static floating_point.ZERO
execute store result score ::math::floating_point temp0 run function math:floating_point/compare/equal
return run execute if score ::math::floating_point temp0 = ::const FALSE
