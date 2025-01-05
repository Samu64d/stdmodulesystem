#
# math:cordic/functions/atan/loop
#

# Get the direction sign
function math:cordic/directions/vector

# Get the arctangent value
function math:cordic/angle_value_list/next_element

# Translate the vector
execute if score ::math::cordic d matches 1 run function math:cordic/core/default/circular/crdc_circular_positive
execute if score ::math::cordic d matches -1 run function math:cordic/core/default/circular/crdc_circular_negative

# Update loop variable
scoreboard players operation ::math::cordic pow *= ::int 2

scoreboard players add ::math::cordic i 1
execute if score ::math::cordic i <= ::math::cordic::const CRDC_ITERATIONS run function math:cordic/functions/atan/loop

# Loop
