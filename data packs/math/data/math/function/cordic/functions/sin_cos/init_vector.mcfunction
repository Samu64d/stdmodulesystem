#
# math:cordic/functions/sin_cos/init_vector
#

# Starting vector: x = K, y = 0, z = θ
scoreboard players operation ::math::cordic x = ::math::cordic::const CRDC_K_FACTOR
scoreboard players set ::math::cordic y 0
scoreboard players operation ::math::cordic z = ::in angle
