#
# math:cordic/core/default/circular/crdc_circular_double_positive
#

scoreboard players operation ::math::cordic x0 = ::math::cordic x

# X
scoreboard players operation ::math::cordic f = ::math::cordic y
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic x -= ::math::cordic f

# Y
scoreboard players operation ::math::cordic f = ::math::cordic x0
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic y += ::math::cordic f

scoreboard players operation ::math::cordic x0 = ::math::cordic x

# X
scoreboard players operation ::math::cordic f = ::math::cordic y
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic x -= ::math::cordic f

# Y
scoreboard players operation ::math::cordic f = ::math::cordic x0
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic y += ::math::cordic f

# Z
scoreboard players operation ::math::cordic f = ::math::cordic e
scoreboard players operation ::math::cordic f *= ::int 2
scoreboard players operation ::math::cordic z += ::math::cordic f
