#
# math:cordic/functions/acos
#
# Calculate the arccosine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-1; 1]
#> Scores
#  @t (in): the ratio value
#  @acos (out): the arccosine value
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
function math:cordic/functions/asin_acos/loop_acos

# Add approximated residual value
function math:cordic/functions/asin_acos/calc_acos_residual_value
scoreboard players operation ::math::cordic z -= ::math::cordic f

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out acos = ::math::cordic z
