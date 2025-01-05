#
# math:cbrtf/loop
#

scoreboard players operation ::math prev_cbrt = ::math cbrt

# Cbrt(n) = (2x + (n / x^2)) / 3
scoreboard players operation ::in value0 = ::math cbrt
scoreboard players operation ::in value1 = ::math cbrt
execute store result score ::in value1 run function math:mulf
scoreboard players operation ::in value0 = ::in value
execute store result score ::in value0 run function math:divf
scoreboard players operation ::in value0 += ::math cbrt
scoreboard players operation ::in value0 += ::math cbrt
scoreboard players operation ::in value1 = ::math three_value
execute store result score ::math cbrt run function math:divf

scoreboard players operation ::math prev_cbrt -= ::math cbrt
execute unless score ::math prev_cbrt matches -1..1 run function math:cbrtf/loop

# Loop
