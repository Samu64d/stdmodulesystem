#
# math:acosh/calc_root
#

scoreboard players operation ::in value0 = ::in t
scoreboard players operation ::in value1 = ::in t
execute store result score ::in value run function math:mul
scoreboard players operation ::in value -= ::math::const FXP_DEF_MAG
execute store result score ::in value run function math:sqrt
