#
# random:rand
#
# Generate a 32 bit pseudorandom number
#> Scores
#  @min (in): the minimum value of the random number
#  @max (in): the maximum value of the random number
#> Return data
#  random number

# Check for min equal max
execute if score ::in min = ::in max run return run scoreboard players get ::in min

# Normal range
execute store result storage io: min int 1.0 run scoreboard players get ::in min
execute store result storage io: max int 1.0 run scoreboard players get ::in max
return run function random:common/gen_rand_32 with storage io:
