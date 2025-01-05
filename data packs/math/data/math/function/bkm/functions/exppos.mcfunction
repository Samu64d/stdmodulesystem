#
# math:bkm/functions/exppos
#
# Calculate the exponential value for positive arguments with fixed point precision using the BKM algorithm
#  Supported domain: [0, -3.06]
#> Scores
#  @value (in): the value
#  @exp (out): the exponential value
#> Return void

# Init vector
function math:bkm/functions/exppos/init_vector

# Get a log values list instance
function math:bkm/log_value_list/log/get

# Calculate
function math:bkm/core/custom_exp/positive/main

# Add approximated residual value
function math:bkm/functions/exppos/add_residual_value

scoreboard players operation ::out exp = ::math::bkm y
