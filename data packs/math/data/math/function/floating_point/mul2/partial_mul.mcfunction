#
# math:floating_point/mul2/partial_mul
#

# Get digit value
scoreboard players operation ::math::floating_point partial_mul = ::math::floating_point number_b
scoreboard players operation ::math::floating_point partial_mul /= ::math::floating_point p_value
scoreboard players operation ::math::floating_point partial_mul %= ::int 10

# Multiply
scoreboard players operation ::math::floating_point partial_mul *= ::math::floating_point number_a

# Check for underflow
execute if score ::math::floating_point underflow > ::math::floating_point p_value run function math:floating_point/mul2/adjust_underflowed_magnitude
execute if score ::math::floating_point underflow <= ::math::floating_point p_value run function math:floating_point/mul2/adjust_magnitude

# Add contribute
scoreboard players operation ::math::floating_point number += ::math::floating_point partial_mul
