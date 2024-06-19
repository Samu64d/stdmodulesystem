#
# test:tests/random/random
#

# Rand binomial
scoreboard players set ::in n 1
scoreboard players set ::in min -100
scoreboard players set ::in max 100
execute store result score ::test value run function random:rand_binomial

# Rand
scoreboard players set ::in min -4
scoreboard players set ::in max 12
execute store result score ::test value run function random:rand

# Rand16
execute store result score ::test value run function random:rand16

# Randbool
execute store result score ::test value run function random:randbool

# Randchar
execute store result score ::test value run function random:randchar

# Randfp
function random:randfp

# Randlcg
scoreboard players set ::in min -123
scoreboard players set ::in max -33
execute store result score ::test value run function random:randlcg

# Srandlcg
scoreboard players set ::in seed 0
function random:srandlcg
