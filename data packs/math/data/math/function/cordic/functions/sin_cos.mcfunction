#
# math:cordic/functions/sin_cos
#
# Calculate the sine and the cosine value with fixed point precision using the CORDIC algorithm
#  Supported domain: [-1.74; 1.74]
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @sin (out): the sine value
#  @cos (out): the cosine value
#> Return void

# Init vector
function math:cordic/functions/sin_cos/init_vector

# Get an angle list instance
function math:cordic/angle_value_list/circular/get

# Start loop
scoreboard players set ::math::cordic pow 1
scoreboard players set ::math::cordic i 0
function math:cordic/functions/sin_cos/loop

# Add approximated residual value
scoreboard players operation ::math::cordic x -= ::math::cordic z
scoreboard players operation ::math::cordic y += ::math::cordic z

# Remove the angle list instance
function math:cordic/angle_value_list/remove

scoreboard players operation ::out cos = ::math::cordic x
scoreboard players operation ::out sin = ::math::cordic y
