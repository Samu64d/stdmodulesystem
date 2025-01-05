#
# math:sqrt/loop
#

scoreboard players operation ::math prev_sqrt = ::math sqrt

# Sqrt(n) = (x + (n / x)) / 2
scoreboard players operation ::in value0 = ::in value
scoreboard players operation ::in value1 = ::math sqrt
execute store result score ::in value0 run function math:div
scoreboard players operation ::in value0 += ::math sqrt
scoreboard players operation ::in value1 = ::math two_value
execute store result score ::math sqrt run function math:div

scoreboard players operation ::math prev_sqrt -= ::math sqrt
execute unless score ::math prev_sqrt matches -1..1 run function math:sqrt/loop

# Loop
