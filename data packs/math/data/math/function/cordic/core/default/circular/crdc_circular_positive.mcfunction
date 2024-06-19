#
# math:cordic/core/default/circular/crdc_circular_positive
#
# CORDIC Algorithm
# At the (i + 1)-th iteration:
# x(i+1) = x(i) - d(i) * 2^-i * y(i) * u
# y(i+1) = y(i) + d(i) * 2^-i * x(i)
# z(i+1) = z(i) - d(i) * e(i)
# Where
# x(i): vector x value at the i-th iteration
# y(i): vector y value at the i-th iteration
# z(i): vector z value at the i-th iteration
# d(i): direction factor
# e(i): linear rotations: 2^-i, circular rotations: tan-1(2^-i), hyperbolic rotations: tanh-1(2^-i)
# u = rotation type (linear rotations: 0, circular rotations: 1, hyperbolic rotations: -1)

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
scoreboard players operation ::math::cordic z -= ::math::cordic e
