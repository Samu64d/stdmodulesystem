#
# random:rand_binomial
#
# Generate a 32 bit pseudorandom integer number with a binomial distribution
#> Scores
#  @n (in): the number of tests
#  @min (in): the minimum value of the random number
#  @max (in): the maximum value of the random number
#> Return data
#  random number

scoreboard players operation ::random n = ::in n

# Create floating point number
scoreboard players set ::in value 0
function math:floating_point/from_score
data modify storage random:volatile rand_binomial set from storage io: result

# Start loop
function random:rand_binomial/loop

# Create floating point number n
scoreboard players operation ::in value = ::random n
function math:floating_point/from_score

# Divide by n
data modify storage io: value0 set from storage random:volatile rand_binomial
data modify storage io: value1 set from storage io: result
function math:floating_point/div
data modify storage random:volatile rand_binomial set from storage io: result

# Limit to the given range
function random:rand_binomial/limit_range

# To score
data modify storage io: value set from storage random:volatile rand_binomial
execute store result score ::random value run function math:floating_point/to_score

# Return data
return run scoreboard players get ::random value
