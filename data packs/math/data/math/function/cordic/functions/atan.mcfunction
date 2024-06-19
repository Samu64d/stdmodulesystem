#
# math:cordic/functions/atan
#
# Calculate the arctangent value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-1.42; 1.42]
#> Scores
#  @x (in): the x angle value
#  @y (in): the y angle value
#  @atan (out): the arctangent value
#> Return void

# Init vector
function math:cordic/functions/atan/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/circular/get

# Start loop
function math:cordic/angle_value_list/next_element
scoreboard players set ::math::cordic pow 2
scoreboard players set ::math::cordic i 1
function math:cordic/functions/atan/loop

# Restore sign
scoreboard players operation ::math::cordic z *= ::math::cordic sign

# Add approximated residual value
function math:cordic/functions/atan/calc_residual_value
scoreboard players operation ::math::cordic z -= ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out atan = ::math::cordic z
