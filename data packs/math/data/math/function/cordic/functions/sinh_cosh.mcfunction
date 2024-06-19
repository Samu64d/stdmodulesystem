#
# math:cordic/functions/sinh_cosh
#
# Calculate the hyperbolic sine and cosine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-1.11, 1.11]
#> Scores
#  @angle (in): the angle value
#  @sinh (out): the hyperbolic sine value
#  @cosh (out): the hyperbolic cosine value
#> Return void

# Save variable
scoreboard players operation ::math::cordic angle = ::in angle

# Init vector
function math:cordic/functions/sinh_cosh/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/hyperbolic/get

# Start loop
scoreboard players set ::math::cordic pow 2
scoreboard players set ::math::cordic i 1
function math:cordic/functions/sinh_cosh/loop

# Restore sign
scoreboard players operation ::math::cordic y *= ::math::cordic sign

# Add approximated residual value
scoreboard players operation ::math::cordic x += ::math::cordic z
scoreboard players operation ::math::cordic y += ::math::cordic z

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out cosh = ::math::cordic x
scoreboard players operation ::out sinh = ::math::cordic y
