#
# math:cordic/functions/atanh/loop
#

# Get the direction sign
function math:cordic/directions/vector

# Get the hyperbolic arctangent value
function math:cordic/angle_value_list/next_element

# Check for double iteration
scoreboard players operation ::math::cordic need_double = ::const TRUE
execute unless score ::math::cordic i matches 4 unless score ::math::cordic i matches 13 run scoreboard players operation ::math::cordic need_double = ::const FALSE

# Execute
execute if score ::math::cordic need_double = ::const FALSE run function math:cordic/functions/atanh/single_iteration
execute if score ::math::cordic need_double = ::const TRUE run function math:cordic/functions/atanh/double_iteration

# Update loop variable
scoreboard players operation ::math::cordic pow *= ::int 2

scoreboard players add ::math::cordic i 1
execute if score ::math::cordic i <= ::math::cordic::const CRDC_ITERATIONS run function math:cordic/functions/atanh/loop

# Loop
