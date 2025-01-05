#
# math:floating_point/mul2/adjust_underflowed_magnitude
#

scoreboard players operation ::math::floating_point mul_temp = ::math::floating_point underflow
scoreboard players operation ::math::floating_point mul_temp /= ::math::floating_point p_value

# Check for error
scoreboard players operation ::math::floating_point mul_temp2 = ::math::floating_point partial_mul
scoreboard players operation ::math::floating_point mul_temp2 %= ::math::floating_point mul_temp
scoreboard players operation ::math::floating_point mul_temp2 *= ::math::floating_point p_value
execute if score ::math::floating_point mul_temp2 matches 1.. run scoreboard players operation ::math::floating_point c_err += ::math::floating_point mul_temp2

# Adjust magnitude
scoreboard players operation ::math::floating_point partial_mul /= ::math::floating_point mul_temp
