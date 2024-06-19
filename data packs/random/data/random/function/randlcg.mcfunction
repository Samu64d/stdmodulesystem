#
# random:randlcg
#
# Generate a 32 bit random number with an high-performance linear congruential generator using Schrage's Method to
# avoid 32 bit integer overflow
#  References:
#  https://en.wikipedia.org/wiki/Linear_congruential_generator
#  http://farside.ph.utexas.edu/teaching/329/lectures/node107.html
#  http://webcache.googleusercontent.com/search?q=cache:-gE2m5v_vD4J:www.aip.de/groups/soe/local/numres/bookcpdf/c7-1.pdf
#  Use this generator when (max - min) < 2 is not recommended
#  Please use instead random:rand to generate a better random distribution
#> Scores
#  @min (in): the minimum value of the random number
#  @max (in): the maximum value of the random number
#> Return data
#  random number

# A * (x % q) - r * (x / q) + c
scoreboard players operation ::random value = ::random::const LCG_A
scoreboard players operation ::random temp0 = ::random last_lcg_value
scoreboard players operation ::random temp0 %= ::random::const LCG_Q
scoreboard players operation ::random value *= ::random temp0
scoreboard players operation ::random temp1 = ::random last_lcg_value
scoreboard players operation ::random temp1 /= ::random::const LCG_Q
scoreboard players operation ::random temp1 *= ::random::const LCG_R
scoreboard players operation ::random value -= ::random temp1
scoreboard players operation ::random value += ::random::const LCG_C
execute if score ::random value matches ..0 run scoreboard players operation ::random value += ::random::const LCG_M

# Store last random value
scoreboard players operation ::random last_lcg_value = ::random value

# Limit to the given range
# Note: The use of modulus operator (%) is not recommended for normalize random value of LCGs but other methods are not suitable due to integer overflow
function random:randlcg/limit_range

# Return data
return run scoreboard players get ::random value
