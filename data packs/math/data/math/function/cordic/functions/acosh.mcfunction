#
# math:cordic/functions/acosh
#
# Calculate the hyperbolic arccosine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [1.01; 4.10]
#> Scores
#  @t (in): the ratio value
#  @acosh (out): the hyperbolic arccosine value
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
function math:cordic/functions/asinh_acosh/loop_acosh

# Add approximated residual value
function math:cordic/functions/asin_acos/calc_acos_residual_value
scoreboard players operation ::math::cordic z += ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out acosh = ::math::cordic z
