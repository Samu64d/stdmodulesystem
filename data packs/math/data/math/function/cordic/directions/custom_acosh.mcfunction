#
# math:cordic/directions/custom_acosh
#

# Vector mode: d(i) = x > t ? -sign(y) : sign(y)
scoreboard players set ::math::cordic d 1
execute if score ::math::cordic y matches ..-1 run scoreboard players set ::math::cordic d -1
execute if score ::math::cordic x > ::math::cordic t run scoreboard players operation ::math::cordic d *= ::const NEGONE
