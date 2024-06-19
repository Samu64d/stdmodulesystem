#
# math:cordic/directions/custom_acos
#

# Vector mode: d(i) = x < t ? -1 : 1, if y < 0 then d(i) = -1 if z < 0 then d(i) = 1
scoreboard players set ::math::cordic d 1
execute if score ::math::cordic x < ::math::cordic t run scoreboard players set ::math::cordic d -1
execute if score ::math::cordic y matches ..-1 run scoreboard players set ::math::cordic d -1
execute if score ::math::cordic z matches ..-1 run scoreboard players set ::math::cordic d 1
