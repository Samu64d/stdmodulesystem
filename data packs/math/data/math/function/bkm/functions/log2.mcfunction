#
# math:bkm/functions/log2
#
# Calculate the logarithm base 2 value with fixed point precision using the BKM algorithm
#  Supported domain: [0.00000035, 21.47]
#> Scores
#  @value (in): the value
#  @log2 (out): the logarithm base 2 value
#> Return void

# Init vector
function math:bkm/functions/log/init_vector

# Get a log values list instance
function math:bkm/log_value_list/log2/get

# Calculate
scoreboard players set ::math::bkm scaled_y 500000000
function math:bkm/core/custom_log/main

# Add approximated residual value
scoreboard players set ::math::bkm rest_ratio 14426
function math:bkm/functions/common/add_residual_value

scoreboard players operation ::out log2 = ::math::bkm y
