#
# random:rand16
#
# Generate a 16 bit pseudorandom number
#> Return data
#  random number

# Generate a 16-bit random number by randomizing each bit
scoreboard players set ::random value 0
function random:common/gen_rand_bit_1_8
function random:common/gen_rand_bit_9_16

# Return data
return run scoreboard players get ::random value
