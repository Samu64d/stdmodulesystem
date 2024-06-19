#
# math:clampeq/swap
#

scoreboard players operation ::math temp0 = ::in min
scoreboard players operation ::in min = ::in max
scoreboard players operation ::in max = ::math temp0
