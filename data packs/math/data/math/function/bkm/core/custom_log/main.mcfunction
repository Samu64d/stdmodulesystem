#
# math:bkm/core/custom_log/main
#

# Get a pivot list instance
function math:bkm/log_pivot_list/get

# Rescale
execute unless score ::math::bkm x <= ::math::bkm::const BKM_FXP_MAG run function math:bkm/core/custom_log/rescale

# Start loop
scoreboard players set ::math::bkm i 0
scoreboard players operation ::math::bkm pow = ::const 2E16
function math:bkm/core/custom_log/loop

# Start loop2
execute if score ::math::bkm i < ::math::bkm::const BKM_LOG_ITERATIONS run function math:bkm/core/custom_log/loop2
