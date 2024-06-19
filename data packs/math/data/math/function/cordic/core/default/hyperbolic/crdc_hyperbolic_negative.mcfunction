#
# math:cordic/core/default/hyperbolic/crdc_hyperbolic_negative
#

scoreboard players operation ::math::cordic x0 = ::math::cordic x

# X
scoreboard players operation ::math::cordic f = ::math::cordic y
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic x -= ::math::cordic f

# Y
scoreboard players operation ::math::cordic f = ::math::cordic x0
scoreboard players operation ::math::cordic f /= ::math::cordic pow
scoreboard players operation ::math::cordic y -= ::math::cordic f

# Z
scoreboard players operation ::math::cordic z += ::math::cordic e
