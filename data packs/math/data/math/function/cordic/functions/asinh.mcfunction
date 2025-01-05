#
# math:cordic/functions/asinh
#
# Calculate the hyperbolic arcsine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-4.05; 4.05]
#> Scores
#  @t (in): the ratio value
#  @asinh (out): the hyperbolic arcsine value
#> Return void

# Save variable
scoreboard players operation ::math::cordic t = ::in t

# Init vector
function math:cordic/functions/asinh_acosh/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/hyperbolic/get

# Start loop
scoreboard players set ::math::cordic pow 2
scoreboard players set ::math::cordic i 1
function math:cordic/functions/asinh_acosh/loop_asinh

# Add approximated residual value
function math:cordic/functions/asin_acos/calc_asin_residual_value
scoreboard players operation ::math::cordic z += ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out asinh = ::math::cordic z
