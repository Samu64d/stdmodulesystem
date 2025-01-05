#
# math:cordic/directions/custom_asin
#

# Vector mode: d(i) = y > t ? -sign(x) : sign(x)
scoreboard players set ::math::cordic d 1
execute if score ::math::cordic x matches ..-1 run scoreboard players set ::math::cordic d -1
execute if score ::math::cordic y > ::math::cordic t run scoreboard players operation ::math::cordic d *= ::const NEGONE
