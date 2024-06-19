#
# math:cordic/functions/asinh_acosh/loop_acosh
#

# Get the direction sign
function math:cordic/directions/custom_acosh

# Common loop
function math:cordic/functions/asinh_acosh/loop_common

scoreboard players add ::math::cordic i 1
execute if score ::math::cordic i <= ::math::cordic::const CRDC_ITERATIONS run function math:cordic/functions/asinh_acosh/loop_acosh

# Loop
