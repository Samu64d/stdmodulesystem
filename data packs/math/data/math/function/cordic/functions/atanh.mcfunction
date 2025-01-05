#
# math:cordic/functions/atanh
#
# Calculate the hyperbolic arctangent value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-0.80; 0.80]
#> Scores
#  @x (in): the x angle value
#  @y (in): the y angle value
#  @atanh (out): the hyperbolic arctangent value
#> Return void

# Init vector
function math:cordic/functions/atanh/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/hyperbolic/get

# Start loop
scoreboard players set ::math::cordic pow 2
scoreboard players set ::math::cordic i 1
function math:cordic/functions/atanh/loop

# Restore sign
scoreboard players operation ::math::cordic z *= ::math::cordic sign

# Add approximated residual value
function math:cordic/functions/atan/calc_residual_value
scoreboard players operation ::math::cordic z += ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out atanh = ::math::cordic z
