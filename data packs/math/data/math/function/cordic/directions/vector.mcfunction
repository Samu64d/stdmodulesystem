#
# math:cordic/directions/vector
#

# Vector mode: d(i) = -sign(y)
scoreboard players set ::math::cordic d -1
execute if score ::math::cordic y matches ..-1 run scoreboard players operation ::math::cordic d *= ::const NEGONE
