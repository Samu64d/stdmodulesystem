#
# random:randchar
#
# Generate a pseudorandom char
#> Return data
#  random char

# Randomize each bit
scoreboard players set ::random value 0
function random:common/gen_rand_bit_1_8

# Return data
return run scoreboard players get ::random value
