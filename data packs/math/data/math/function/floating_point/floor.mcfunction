#
# math:floating_point/floor
#
# Get the greatest integer value less than or equal of a floating point number
#> Storage
#  @value (in): the floating point number
#  @result (out): the result value
#> Return void

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/push

# Get fractional part
function math:floating_point/get_fractional_part

# Decompose the fractional part
function math:floating_point/common/decompose

# Check if the fractional part is negative
execute store result score ::math::floating_point no_zero if score ::math::floating_point number matches ..-1

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: value"
function stdmodulesystem:stack/pop

# Get integer part
function math:floating_point/get_integer_part

# Decompose the integer part
function math:floating_point/common/decompose

# Remove one if the fractional part is negative
execute if score ::math::floating_point no_zero = ::const TRUE run scoreboard players remove ::math::floating_point number 1

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
