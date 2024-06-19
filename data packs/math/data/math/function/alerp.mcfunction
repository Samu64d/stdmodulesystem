#
# math:alerp
#
# Interpolate angle values expressed in degrees with fixed point precision
# https://stackoverflow.com/questions/2708476/rotation-interpolation
#> Scores
#  @a (in): the first angle measure expressed in degrees
#  @b (in): the second angle expressed in degrees
#  @t (in): the value of the interpolant number (between 0 and 100)
#> Return data
#  interpolaed angle value

# (((((((angle1 - angle0) % 360) + 360 + 180) % 360) - 180) * t) + angle0) % 360
scoreboard players operation ::math alerp = ::in b
scoreboard players operation ::math alerp -= ::in a
scoreboard players operation ::math alerp %= ::int 360
scoreboard players operation ::math alerp += ::int 360
scoreboard players operation ::math alerp += ::int 180
scoreboard players operation ::math alerp %= ::int 360
scoreboard players operation ::math alerp -= ::int 180
scoreboard players operation ::math alerp *= ::in t
scoreboard players operation ::math alerp /= ::int 100
scoreboard players operation ::math alerp += ::in a
scoreboard players operation ::math alerp %= ::int 360

# Return data
return run scoreboard players get ::math alerp
