#
# math:atan/out_range
#

# Atan(t) = acos(1 / sqrt(t^2 + 1))

# Calculate sign
scoreboard players set ::math sign 1
execute if score ::in t matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in t matches ..-1 run scoreboard players operation ::in t *= ::const NEGONE

# Calculate 1 / sqrt(t^2 + 1)

# Avoid overflow for large values of x^2
scoreboard players operation ::math hundred_value = ::math::const FXP_DEF_MAG
scoreboard players operation ::math hundred_value *= ::const 10E2
execute if score ::in t < ::math hundred_value run function math:atan/calc_root
execute if score ::in t >= ::math hundred_value run scoreboard players operation ::in value = ::in t

execute store result score ::in t run function math:inv

# Computer arccosine
execute store result score ::math atan run function math:acos

# Restore sign
scoreboard players operation ::math atan *= ::math sign
