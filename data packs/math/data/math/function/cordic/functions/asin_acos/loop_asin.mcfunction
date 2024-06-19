#
# math:cordic/functions/asin_acos/loop_asin
#

# Get the direction sign
function math:cordic/directions/custom_asin

# Common loop
function math:cordic/functions/asin_acos/loop_common

scoreboard players add ::math::cordic i 1
execute if score ::math::cordic i <= ::math::cordic::const CRDC_ITERATIONS run function math:cordic/functions/asin_acos/loop_asin

# Loop
