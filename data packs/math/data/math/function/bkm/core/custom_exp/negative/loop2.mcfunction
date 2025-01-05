#
# math:bkm/core/custom_exp/negative/loop2
#

# Get the logarithm hashtable value
function math:bkm/log_value_list/next_element

# Check for pivot value
execute if score ::math::bkm x <= ::math::bkm e run function math:bkm/core/custom_exp/negative/mul_1m2mi

# Update power
scoreboard players operation ::math::bkm pow *= ::int 2

scoreboard players add ::math::bkm i 1
execute if score ::math::bkm i < ::math::bkm::const BKM_EXP_ITERATIONS run function math:bkm/core/custom_exp/negative/loop2
