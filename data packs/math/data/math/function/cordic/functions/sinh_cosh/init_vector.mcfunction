#
# math:cordic/functions/sinh_cosh/init_vector
#

# Calculate sign
scoreboard players set ::math::cordic sign 1
execute if score ::math::cordic angle matches ..-1 run scoreboard players set ::math::cordic sign -1
execute if score ::math::cordic sign matches -1 run scoreboard players operation ::math::cordic angle *= ::const NEGONE

# Starting vector: x = KH, y = 0, z = θ
scoreboard players operation ::math::cordic x = ::math::cordic::const CRDC_KH_FACTOR
scoreboard players set ::math::cordic y 0
scoreboard players operation ::math::cordic z = ::math::cordic angle
