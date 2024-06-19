#
# math:cordic/functions/asin_acos/loop_common
#

# Get the arctangent value
function math:cordic/angle_value_list/next_element

# Translate the vector
execute if score ::math::cordic d matches 1 run function math:cordic/core/default/circular/crdc_circular_double_positive
execute if score ::math::cordic d matches -1 run function math:cordic/core/default/circular/crdc_circular_double_negative

# Update t value
scoreboard players operation ::math::cordic temp0 = ::math::cordic t
scoreboard players operation ::math::cordic temp0 /= ::math::cordic pow
scoreboard players operation ::math::cordic temp0 /= ::math::cordic pow
scoreboard players operation ::math::cordic t += ::math::cordic temp0

# Update loop variable
scoreboard players operation ::math::cordic pow *= ::int 2
