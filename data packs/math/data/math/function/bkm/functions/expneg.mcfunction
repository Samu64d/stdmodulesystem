#
# math:bkm/functions/expneg
#
# Calculate the exponential value for negative arguments with fixed point precision using the BKM algorithm
#  Supported domain: [-21.47, 0)
#> Scores
#  @value (in): the value
#  @exp (out): the exponential value
#> Return void

# Init vector
function math:bkm/functions/expneg/init_vector

# Get a log values list instance
function math:bkm/log_value_list/log_negative/get

# Calculate
function math:bkm/core/custom_exp/negative/main

# Add approximated residual value
function math:bkm/functions/expneg/add_residual_value

scoreboard players operation ::out exp = ::math::bkm y
