#
# random:rand16
#
# Generate a 16 bit pseudorandom integer number
#> Return data
#  random number

# Randomize each bit
scoreboard players set ::random value 0
function random:common/gen_rand_bit_1_8
function random:common/gen_rand_bit_9_16

# Return data
return run scoreboard players get ::random value
