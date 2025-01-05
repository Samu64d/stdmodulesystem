#
# math:bkm/functions/log10
#
# Calculate the logarithm base 10 value with fixed point precision using the BKM algorithm
#  Supported domain: (0, 21.47]
#> Scores
#  @value (in): the value
#  @log10 (out): the logarithm base 10 value
#> Return void

# Init vector
function math:bkm/functions/log/init_vector

# Get a log values list instance
function math:bkm/log_value_list/log10/get

# Calculate
scoreboard players set ::math::bkm scaled_y 150514997
function math:bkm/core/custom_log/main

# Add approximated residual value
scoreboard players set ::math::bkm rest_ratio 4342
function math:bkm/functions/common/add_residual_value

scoreboard players operation ::out log10 = ::math::bkm y
