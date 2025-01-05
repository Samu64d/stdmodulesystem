#
# math:bkm/core/custom_log/loop2
#

# Get the logarithm hashtable value
function math:bkm/log_value_list/next_element

# Get the pivot value
function math:bkm/log_pivot_list/next_element

# Check for pivot value
execute if score ::math::bkm x < ::math::bkm pivot run function math:bkm/core/custom_log/mul_1p2mi

# Update power
scoreboard players operation ::math::bkm pow *= ::int 2

scoreboard players add ::math::bkm i 1
execute if score ::math::bkm i < ::math::bkm::const BKM_LOG_ITERATIONS run function math:bkm/core/custom_log/loop2
