#
# math:floating_point/inv
#
# Get the inverse of a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

data modify storage io: value0 set from storage math:static floating_point.ONE
data modify storage io: value1 set from storage io: value
function math:floating_point/div
