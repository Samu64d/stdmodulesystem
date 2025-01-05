#
# math:atanf/out_range
#

scoreboard players operation ::in pow = ::math p
execute store result score ::math mag_value run function math:utils/get_power_of_ten

# Atan(t) = acos(1 / sqrt(t^2 + 1))

# Calculate sign
scoreboard players set ::math sign 1
execute if score ::in t matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in t matches ..-1 run scoreboard players operation ::in t *= ::const NEGONE

# Calculate 1 / sqrt(t^2 + 1)

# Avoid overflow for large values of x^2
scoreboard players operation ::math hundred_value = ::math mag_value
scoreboard players operation ::math hundred_value *= ::const 10E2
execute if score ::in t < ::math hundred_value run function math:atanf/calc_root
execute if score ::in t >= ::math hundred_value run scoreboard players operation ::in value = ::in t

execute store result score ::in t run function math:invf

# Computer arccosine
execute store result score ::math atan run function math:acosf

# Restore sign
scoreboard players operation ::math atan *= ::math sign
