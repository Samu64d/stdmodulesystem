#
# math:floating_point/mul2/sub
#
# Subtract two floating point numbers
#> Storage
#  @value0 (in): the first floating point number to substract
#  @value1 (in): the second floating point number to substract
#  @result (out): the result value
#> Return void

# Negate value1
data modify storage io: value set from storage io: value1
function math:floating_point/negate
data modify storage io: value1 set from storage io: result

# Add
function math:floating_point/add
