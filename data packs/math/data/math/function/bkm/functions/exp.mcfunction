#
# math:bkm/functions/exp
#
# Calculate the exponential value with fixed point precision using the BKM algorithm
#  Supported domain: [-21.47, 3.06]
#> Scores
#  @value (in): the value
#  @exp (out): the exponential value
#> Return void

# Positive argument
execute if score ::in value matches 0.. run function math:bkm/functions/exppos

# Negative argument
execute if score ::in value matches ..-1 run function math:bkm/functions/expneg
