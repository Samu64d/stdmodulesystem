#
# math:cordic/directions/rotation
#

# Rotation mode: d(i) = sign(z)
scoreboard players set ::math::cordic d -1
execute if score ::math::cordic z matches 0.. run scoreboard players set ::math::cordic d 1
