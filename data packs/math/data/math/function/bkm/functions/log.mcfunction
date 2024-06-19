#
# math:bkm/functions/log
#
# Calculate the natural logarithm value with fixed point precision using the BKM algorithm
#  Supported domain: (0, 21.47]
#> Scores
#  @value (in): the value
#  @log (out): the logarithm value
#> Return void

# Init vector
function math:bkm/functions/log/init_vector

# Get a log values list instance
function math:bkm/log_value_list/log/get

# Calculate
scoreboard players set ::math::bkm scaled_y 346573590
function math:bkm/core/custom_log/main

# Add approximated residual value
scoreboard players set ::math::bkm rest_ratio 10000
function math:bkm/functions/common/add_residual_value

scoreboard players operation ::out log = ::math::bkm y
