#
# math:atan2/out_range
#

# Atan2(x, y) = acos(x / sqrt(x^2 + y^2))

# Calculate sign
scoreboard players set ::math sign 1
execute if score ::in x matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in y matches ..-1 run scoreboard players operation ::math sign *= ::const NEGONE

# Calculate x / sqrt(x^2 + y^2)
scoreboard players operation ::in value0 = ::in x
scoreboard players operation ::in value1 = ::in x
execute store result score ::in temp0 run function math:mul
scoreboard players operation ::in value0 = ::in y
scoreboard players operation ::in value1 = ::in y
execute store result score ::in value run function math:mul
scoreboard players operation ::in value += ::in temp0
execute store result score ::in value1 run function math:sqrt
scoreboard players operation ::in value0 = ::in x
execute store result score ::in t run function math:div

# Computer arccosine
execute store result score ::math atan2 run function math:acos

# Restore sign
scoreboard players operation ::math atan2 *= ::math sign
