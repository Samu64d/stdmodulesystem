#
# math:floating_point/add/avoid_overflow
#

# Remove a digit
scoreboard players operation ::math::floating_point number_a /= ::const 10E1
scoreboard players operation ::math::floating_point number_b /= ::const 10E1

# Update characteristic
scoreboard players add ::math::floating_point p_a 1
scoreboard players add ::math::floating_point p_b 1
