#
# math:cordic/functions/atan/init_vector
#

# Starting vector: x = x, y = y, z = 0
scoreboard players operation ::math::cordic x = ::in x
scoreboard players operation ::math::cordic y = ::in y
scoreboard players set ::math::cordic z 0

# Calculate sign

# X
scoreboard players set ::math::cordic sign 1
execute if score ::math::cordic x matches ..-1 run scoreboard players set ::math::cordic sign -1
execute if score ::math::cordic sign matches -1 run scoreboard players operation ::math::cordic x *= ::const NEGONE

# Y
scoreboard players set ::math::cordic sign2 1
execute if score ::math::cordic y matches ..-1 run scoreboard players set ::math::cordic sign2 -1
execute if score ::math::cordic sign2 matches -1 run scoreboard players operation ::math::cordic y *= ::const NEGONE

# Fraction
scoreboard players operation ::math::cordic sign *= ::math::cordic sign2
