#
# math:floating_point/mul2/adjust_magnitude
#

# Adjust magnitude
scoreboard players operation ::math::floating_point mul_temp = ::math::floating_point p_value
scoreboard players operation ::math::floating_point mul_temp /= ::math::floating_point underflow
scoreboard players operation ::math::floating_point partial_mul *= ::math::floating_point mul_temp
