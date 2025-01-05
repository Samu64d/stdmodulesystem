#
# math:floating_point/round
#
# Rounding a floating point number to the nearest integer value
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/push

# Get fractional part
function math:floating_point/get_fractional_part

# Get absolute value
data modify storage io: value set from storage io: result
function math:floating_point/abs

# Check if the fractional part is greater than 0.5
data modify storage io: value0 set from storage io: result
data modify storage io: value1 set from storage math:static floating_point.HALF
execute store result score ::math::floating_point past_half run function math:floating_point/compare/greater

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/pop

# Get integer part
function math:floating_point/get_integer_part

# Decompose number
function math:floating_point/common/decompose

# Add or remove one if the fractional part is greater than 0.5
execute if score ::math::floating_point past_half = ::const TRUE if score ::math::floating_point number matches ..-1 run function math:floating_point/round/remove_one
execute if score ::math::floating_point past_half = ::const TRUE if score ::math::floating_point number matches 0.. run function math:floating_point/round/add_one
execute if score ::math::floating_point past_half = ::const FALSE run data modify storage io: result set from storage io: value
