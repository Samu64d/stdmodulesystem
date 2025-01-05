#
# math:cordic/functions/asin
#
# Calculate the arcsine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-1; 1]
#> Scores
#  @t (in): the ratio value
#  @asin (out): the arcsine value
#> Return void

# Save variable
scoreboard players operation ::math::cordic t = ::in t

# Init vector
function math:cordic/functions/asin_acos/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/circular/get

# Start loop
scoreboard players set ::math::cordic pow 1
scoreboard players set ::math::cordic i 0
function math:cordic/functions/asin_acos/loop_asin

# Add approximated residual value
function math:cordic/functions/asin_acos/calc_asin_residual_value
scoreboard players operation ::math::cordic z -= ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out asin = ::math::cordic z
