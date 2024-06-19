#
# math:atanf/calc_root
#

scoreboard players operation ::in value0 = ::in t
scoreboard players operation ::in value1 = ::in t
execute store result score ::in value run function math:mulf
scoreboard players operation ::in value += ::math mag_value
execute store result score ::in value run function math:sqrtf
