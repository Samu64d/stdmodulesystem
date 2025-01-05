#
# random:rand
#
# Generate a 32 bit pseudorandom integer number
#> Scores
#  @min (in): the minimum value of the random number
#  @max (in): the maximum value of the random number
#> Return data
#  random number

# Check for min equal max
execute if score ::in min = ::in max run return run scoreboard players get ::in min

# Generate a 32 bit random integer
execute store result score ::random value run function random:common/gen_rand_32

# Limit to the given range
# Note: The use of modulus operator (%) is not recommended for normalize random value of LCGs but other methods are not suitable due to integer overflow
function random:randlcg/limit_range

# Return data
return run scoreboard players get ::random value
