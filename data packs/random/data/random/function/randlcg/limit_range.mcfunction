#
# random:randlcg/limit_range
#

# X % (max - min + 1) + min
scoreboard players operation ::random temp0 = ::in max
scoreboard players operation ::random temp0 -= ::in min
scoreboard players add ::random temp0 1
scoreboard players operation ::random value %= ::random temp0
scoreboard players operation ::random value += ::in min
